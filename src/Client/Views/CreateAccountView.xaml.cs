using System;
using System.Globalization;
using System.IO;
using System.Resources;
using System.Security;
using System.ServiceModel;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.Helpers;
using Client.ServicePlayerReference;
using Client.ServiceProfileForNonCallbackMethodsReference;
using ProfileLoginStatuses = Client.DomainStatuses.ProfileLoginStatuses;
using MouseEventArgs = System.Windows.Input.MouseEventArgs;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para CreateAccountView.xaml
    /// </summary>
    public partial class CreateAccountView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        #endregion



        #region Constructors
        public CreateAccountView(MainWindow mainWindow)
        {
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);
            this.mainWindow = mainWindow;

            InitializeComponent();
        }
        #endregion



        #region Methods for GUIs elements events
        private void SelectImageButton(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog
            {
                Filter = "Image Files (*.jpg, *.png, *jpeg)|*.jpg;*.png;*.jpeg",
                Title = resourceManager.GetString("Select an image", cultureInfo)
            };

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                BitmapImage imageSource = new BitmapImage(new Uri(openFileDialog.FileName));
                ProfilePictureImage.Source = imageSource;
                ImageRouteTextBlock.Text = openFileDialog.FileName;
            }
        }

        private void CreateAccountButton(object sender, RoutedEventArgs e)
        {
            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);
            PlayerClient playerClient = new PlayerClient();
            playerClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (InvalidValuesInTextFieldsTextGenerator() == "")
                {
                    if (BirthdayDatePicker.SelectedDate <= DateTime.Now)
                    {
                        SecureString securePassword = PasswordPasswordBox.SecurePassword;
                        string Password = new System.Net.NetworkCredential(string.Empty, securePassword).Password;

                        SecureString secureConfirmPassword = ConfirmPasswordPasswordBox.SecurePassword;
                        string ConfirmPassword = new System.Net.NetworkCredential(string.Empty, secureConfirmPassword).Password;

                        if (Password == ConfirmPassword)
                        {
                            if (!playerClient.TheEmailIsAlreadyRegisted(EmailTextBox.Text))
                            {
                                if (!playerClient.TheNicknameIsAlreadyRegisted(NickNameTextBox.Text))
                                {
                                    ServiceProfileForNonCallbackMethodsReference.Players players = new ServiceProfileForNonCallbackMethodsReference.Players
                                    {
                                        Names = NamesTextBox.Text,
                                        Surnames = SurnamesTextBox.Text,
                                        Email = EmailTextBox.Text,
                                        NickName = NickNameTextBox.Text,
                                        BirthDate = (DateTime)BirthdayDatePicker.SelectedDate
                                    };

                                    ServiceProfileForNonCallbackMethodsReference.Profiles profiles = new ServiceProfileForNonCallbackMethodsReference.Profiles
                                    {
                                        LoginStatus = ProfileLoginStatuses.NotLogged.ToString(),
                                        Score = 0,
                                        Players = players
                                    };

                                    if (ImageRouteTextBlock.Text != "")
                                    {
                                        byte[] imageData = File.ReadAllBytes(ImageRouteTextBlock.Text);

                                        if (imageData.Length <= 1048576)
                                        {
                                            profiles.ProfileImage = Convert.ToBase64String(imageData);
                                        }
                                        else
                                        {
                                            new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The file shouldn't be larger than 1 MB");
                                            return;
                                        }
                                    }

                                    string salt = BCrypt.Net.BCrypt.GenerateSalt();
                                    string hashedPassword = BCrypt.Net.BCrypt.HashPassword(Password, salt);
                                    players.Password = hashedPassword;

                                    profileNonCallbackMethodsClient.AddProfile(profiles);

                                    new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Account made successfully");

                                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                                    navigationService.Navigate(new LoginView(mainWindow));

                                    SongManager.Instance.PlayClickSound();
                                }
                                else
                                {
                                    new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "Nickname already on use");
                                }
                            }
                            else
                            {
                                new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "Email already on use");
                            }

                        }
                        else
                        {
                            new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The passwords aren't the same");
                        }
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "Birth date should be before than the actual date");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", InvalidValuesInTextFieldsTextGenerator());
                }

                profileNonCallbackMethodsClient.Close();
                playerClient.Close();
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedNotInGameConnectionErrorPopUp();
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedNotInGameConnectionErrorPopUp();
            }

        }

        private void GoLoginButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));

            SongManager.Instance.PlayClickSound();
        }
        #endregion



        #region Auxiliary methods
        private string InvalidValuesInTextFieldsTextGenerator()
        {
            int textFieldsWithIncorrectValues = 0;

            string finalText = "";

            string namesPattern = "^[A-Za-záéíóúÁÉÍÓÚ\\s'-]{2,50}$";
            string surnamesPattern = "^[A-Za-záéíóúÁÉÍÓÚ\\s'-]{2,50}$";
            string emailPattern = "^[\\w\\.-]+@[\\w\\.-]+\\.\\w+";
            string nickNamePattern = "^[A-Za-z0-9\\s'-]{2,50}$";
            string passwordPattern = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$%^&+=!])(?!.*\\s).{8,}$";
            string confirmPasswordPattern = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$%^&+=!])(?!.*\\s).{8,}$";

            Regex namesRegex = new Regex(namesPattern);
            Regex surnamesRegex = new Regex(surnamesPattern);
            Regex emailRegex = new Regex(emailPattern);
            Regex nickNameRegex = new Regex(nickNamePattern);
            Regex passwordRegex = new Regex(passwordPattern);
            Regex confirmNewPasswordRegex = new Regex(confirmPasswordPattern);

            Match namesMatch = namesRegex.Match(NamesTextBox.Text);
            Match surnamesMatch = surnamesRegex.Match(SurnamesTextBox.Text);
            Match emailMatch = emailRegex.Match(EmailTextBox.Text);
            Match nickNameMatch = nickNameRegex.Match(NickNameTextBox.Text);

            SecureString passwordSecurePassword = PasswordPasswordBox.SecurePassword;
            string password = new System.Net.NetworkCredential(string.Empty, passwordSecurePassword).Password;

            SecureString confirmPasswordSecurePassword = ConfirmPasswordPasswordBox.SecurePassword;
            string confirmPassword = new System.Net.NetworkCredential(string.Empty, confirmPasswordSecurePassword).Password;

            Match passwordMatch = passwordRegex.Match(password);
            Match confirmPasswordMatch = confirmNewPasswordRegex.Match(confirmPassword);

            if (!namesMatch.Success || !surnamesMatch.Success || !emailMatch.Success ||
                !nickNameMatch.Success || !passwordMatch.Success || !confirmPasswordMatch.Success)
            {
                finalText = finalText + resourceManager.GetString("The text fields with invalid values are", cultureInfo);
            }

            if (!namesMatch.Success)
            {
                finalText = finalText + resourceManager.GetString("Name(s)", cultureInfo) + ".";
                textFieldsWithIncorrectValues++;
            }

            if (!surnamesMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", " + resourceManager.GetString("Surname(s)", cultureInfo) + ".";
                }
                else
                {
                    finalText = finalText + resourceManager.GetString("Surname(s)", cultureInfo) + ".";
                }

                textFieldsWithIncorrectValues++;
            }

            if (!emailMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", " + resourceManager.GetString("Email", cultureInfo) + ".";
                }
                else
                {
                    finalText = finalText + resourceManager.GetString("Email", cultureInfo) + ".";
                }

                textFieldsWithIncorrectValues++;
            }

            if (!nickNameMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", " + resourceManager.GetString("Nickname", cultureInfo) + ".";
                }
                else
                {
                    finalText = finalText + resourceManager.GetString("Nickname", cultureInfo) + ".";
                }

                textFieldsWithIncorrectValues++;
            }

            if (!passwordMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", " + resourceManager.GetString("Password", cultureInfo) + ".";
                }
                else
                {
                    finalText = finalText + resourceManager.GetString("Password", cultureInfo) + ".";
                }

                textFieldsWithIncorrectValues++;
            }

            if (!confirmPasswordMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", " + resourceManager.GetString("Confirm password", cultureInfo) + ".";
                }
                else
                {
                    finalText = finalText + resourceManager.GetString("Confirm password", cultureInfo) + ".";
                }
            }

            return finalText;
        }

        private void PlayHoverSound(object sender, MouseEventArgs e)
        {
            SongManager.Instance.PlayHoverSound();
        }
        #endregion
    }
}
