using System;
using System.Globalization;
using System.Resources;
using System.Security;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServicePlayerReference;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para CreateAccountView.xaml
    /// </summary>
    public partial class CreateAccountView : Page
    {
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        public CreateAccountView(MainWindow mainWindow)
        {
            InitializeComponent();

            this.mainWindow = mainWindow;
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
        }

        private void CreateAccountButton(object sender, RoutedEventArgs e)
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
                        ProfileClient profileClient = new ProfileClient();
                        PlayerClient playerClient = new PlayerClient();
                        if (!playerClient.TheEmailIsAlreadyRegisted(EmailTextBox.Text))
                        {
                            if (!playerClient.TheNicknameIsAlreadyRegisted(NickNameTextBox.Text))
                            {
                                ServiceProfileReference.Players players = new ServiceProfileReference.Players
                                {
                                    Names = NamesTextBox.Text,
                                    Surnames = SurnamesTextBox.Text,
                                    Email = EmailTextBox.Text,
                                    NickName = NickNameTextBox.Text,
                                    BirthDate = (DateTime)BirthdayDatePicker.SelectedDate
                                };

                                ServiceProfileReference.Profiles profiles = new ServiceProfileReference.Profiles
                                {
                                    LoginStatus = ProfileLoginStatuses.NotLogged.ToString(),
                                    Coins = 0,
                                    Players = players
                                };

                                string salt = BCrypt.Net.BCrypt.GenerateSalt();
                                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(Password, salt);
                                players.Password = hashedPassword;

                                try
                                {
                                    profileClient.AddProfile(profiles);
                                }
                                catch (Exception ex)
                                {
                                    Console.WriteLine(ex.StackTrace);
                                }

                                new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Account made successfully");

                                NavigationService navigationService = NavigationService.GetNavigationService(this);
                                navigationService.Navigate(new LoginView(mainWindow));
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

                        profileClient.Close();
                        playerClient.Close();
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
        }


        private void GoLoginButton(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));
        }

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
    }

}
