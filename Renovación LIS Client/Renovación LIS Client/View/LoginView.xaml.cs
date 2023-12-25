using System;
using System.Globalization;
using System.Resources;
using System.Security;
using System.ServiceModel;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using domain;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para LoginView.xaml
    /// </summary>
    public partial class LoginView : Page
    {
        private MainWindow mainWindow;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        public LoginView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;
            InitializeComponent();

            this.mainWindow = mainWindow;
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
        }

        private void OpenForgotPasswordPage(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ForgotPassword(mainWindow));
        }

        private void OpenSignUpPage(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new CreateAccountView(mainWindow));
        }

        private void LoginButton(object sender, RoutedEventArgs e)
        {
            if (invalidValuesInTextFieldsTextGenerator() == "")
            {
                SecureString passwordSecurePassword = PasswordPasswordBox.SecurePassword;
                string password = new System.Net.NetworkCredential(string.Empty, passwordSecurePassword).Password;

                ProfileClient profileClient = new ProfileClient();
                Profile profile = profileClient.GetProfileByPlayerNickname(NicknameTextField.Text);
                
                if (profile != null)
                {
                    string storedHash = Encoding.UTF8.GetString(Encoding.UTF8.GetBytes(profile.Player.Password));

                    if (BCrypt.Net.BCrypt.Verify(password, storedHash))
                    {
                        if (!profileClient.TheProfileIsLogged(profile.IDProfile))
                        {
                            profileClient.ChangeLoginStatus(ProfileLoginStatuses.Logged, profile.IDProfile);
                          

                            ProfileForCallbackMethodsClient profileForCallbackMethodsClient = new ProfileForCallbackMethodsClient(new InstanceContext(new MainWindow()));
                            profileForCallbackMethodsClient.Connect(profile.Player.NickName);

                            mainWindow.SetProfileToLoggedProfile(profile);

                            NavigationService navigationService = NavigationService.GetNavigationService(this);
                            navigationService.Navigate(new MenuView(mainWindow, profile, profileForCallbackMethodsClient));
                        }
                        else
                        {
                            new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The user is already logged");
                        }
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The password isn't correct");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The introduced nickname doesn't exists");
                }

                profileClient.Close();
            }
            else
            {
                new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", invalidValuesInTextFieldsTextGenerator());
            }
        }


        private String invalidValuesInTextFieldsTextGenerator()
        {
            int textFieldsWithIncorrectValues = 0;

            string finalText = "";

            string nickNamePattern = "^[A-Za-z0-9\\s.'-]{2,50}$";
            string passwordPattern = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$%^&+=!])(?!.*\\s).{8,}$";

            Regex nickNameRegex = new Regex(nickNamePattern);
            Regex passwordRegex = new Regex(passwordPattern);

            Match nickNameMatch = nickNameRegex.Match(NicknameTextField.Text);

            SecureString newPasswordSecurePassword = PasswordPasswordBox.SecurePassword;
            string password = new System.Net.NetworkCredential(string.Empty, newPasswordSecurePassword).Password;

            Match passwordMatch = passwordRegex.Match(password);

            if (!nickNameMatch.Success || !passwordMatch.Success)
            {
                finalText = finalText + resourceManager.GetString("The text fields with invalid values are", cultureInfo);
            }

            if (!nickNameMatch.Success)
            {
                finalText = finalText + resourceManager.GetString("Nickname", cultureInfo) + ".";
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

            return finalText;
        }
    }
}
