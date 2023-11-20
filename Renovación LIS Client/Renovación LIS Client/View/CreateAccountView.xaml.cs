using System;
using System.Globalization;
using System.Resources;
using System.Security;
using System.ServiceModel;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using DomainStatuses;
using Renovación_LIS_Client.ServicePlayerReference;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para CreateAccountView.xaml
    /// </summary>
    public partial class CreateAccountView : Page
    {
        private MainWindow mainWindow;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        public CreateAccountView(MainWindow mainWindow)
        {
            InitializeComponent();

            this.mainWindow = mainWindow;
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
        }

        private void CreateAccountButton(object sender, RoutedEventArgs e)
        {
            if (invalidValuesInTextFieldsTextGenerator() == "")
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
                                ServiceProfileReference.Players players = new ServiceProfileReference.Players();
                                players.Names = NamesTextBox.Text;
                                players.Surnames = SurnamesTextBox.Text;
                                players.Email = EmailTextBox.Text;
                                players.NickName = NickNameTextBox.Text;
                                players.BirthDate = (DateTime)BirthdayDatePicker.SelectedDate;

                                ServiceProfileReference.Profiles profiles = new ServiceProfileReference.Profiles();
                                profiles.LoginStatus = ProfileLoginStatuses.NotLogged.ToString();
                                profiles.Coins = 0;
                                profiles.Players = players;

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

                                MessageBox.Show(
                                    resourceManager.GetString("Account made successfully", cultureInfo),
                                    resourceManager.GetString("Success!!!", cultureInfo),
                                    MessageBoxButton.OK,
                                    MessageBoxImage.None
                                );
                                NavigationService navigationService = NavigationService.GetNavigationService(this);
                                navigationService.Navigate(new LoginView(mainWindow));
                            }
                            else
                            {
                                MessageBox.Show(
                                    resourceManager.GetString("Nickname already on use", cultureInfo),
                                    resourceManager.GetString("Too Bad!!!", cultureInfo),
                                    MessageBoxButton.OK, 
                                    MessageBoxImage.Error
                                );
                            }
                        }
                        else
                        {
                            MessageBox.Show(
                                resourceManager.GetString("Email already on use", cultureInfo),
                                resourceManager.GetString("Too Bad!!!", cultureInfo),
                                MessageBoxButton.OK,
                                MessageBoxImage.Error
                            );
                        }

                        profileClient.Close();
                        playerClient.Close();
                    }
                    else
                    {
                        MessageBox.Show(
                            resourceManager.GetString("The passwords aren't the same", cultureInfo),
                            resourceManager.GetString("Too Bad!!!", cultureInfo),
                            MessageBoxButton.OK,
                            MessageBoxImage.Error
                        );
                    }
                }
                else
                {
                    MessageBox.Show(
                        resourceManager.GetString("Birth date should be before than the actual date", cultureInfo),
                        resourceManager.GetString("Too Bad!!!", cultureInfo),
                        MessageBoxButton.OK,
                        MessageBoxImage.Error
                    );
                }
            }
            else
            {
                MessageBox.Show(
                    invalidValuesInTextFieldsTextGenerator(),
                    resourceManager.GetString("Too Bad!!!", cultureInfo),
                    MessageBoxButton.OK, 
                    MessageBoxImage.Error
                );
            }
        }


        private void GoLoginButton(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));
        }

        private String invalidValuesInTextFieldsTextGenerator()
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

                textFieldsWithIncorrectValues++;
            }

            return finalText;
        }
    }

}
