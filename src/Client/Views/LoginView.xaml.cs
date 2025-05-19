using System;
using System.Globalization;
using System.IO;
using System.Resources;
using System.Security;
using System.ServiceModel;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.Helpers;
using Client.ServiceProfileForNonCallbackMethodsReference;
using Profile = Client.ServiceProfileForNonCallbackMethodsReference.Profile;
using ProfileLoginStatuses = Client.ServiceProfileForNonCallbackMethodsReference.ProfileLoginStatuses;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para LoginView.xaml
    /// </summary>
    public partial class LoginView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        #endregion



        #region Constructors
        public LoginView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);

            this.mainWindow = mainWindow;
            InitializeComponent();
        }
        #endregion



        #region Methods for GUIs elements events
        private void OpenForgotPasswordPage(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ForgotPassword(mainWindow));

            SongManager.Instance.PlayClickSound();
        }

        private void OpenSignUpPage(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new CreateAccountView(mainWindow));

            SongManager.Instance.PlayClickSound();
        }

        private void LoginButton(object sender, RoutedEventArgs e)
        {
            mainWindow.RestartProfileCallbackMethodsClient();

            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (InvalidValuesInTextFieldsTextGenerator() == "")
                {
                    SecureString passwordSecurePassword = PasswordPasswordBox.SecurePassword;
                    string password = new System.Net.NetworkCredential(string.Empty, passwordSecurePassword).Password;

                    Profile profile = profileNonCallbackMethodsClient.GetProfileByPlayerNickname(NicknameTextField.Text);

                    if (profile != null)
                    {
                        string storedHash = Encoding.UTF8.GetString(Encoding.UTF8.GetBytes(profile.Player.Password));

                        if (BCrypt.Net.BCrypt.Verify(password, storedHash))
                        {
                            if (!profileNonCallbackMethodsClient.TheProfileIsLogged(profile.IDProfile))
                            {
                                profileNonCallbackMethodsClient.ChangeLoginStatus(ProfileLoginStatuses.Logged, profile.IDProfile);

                                MainWindow.profileCallbackMethodsClient.Connect(profile.Player.NickName);
                                mainWindow.SetProfileTologgedProfile(profile);

                                NavigationService navigationService = NavigationService.GetNavigationService(this);
                                navigationService.Navigate(new MenuView(mainWindow));

                                SongManager.Instance.PlayClickSound();
                            }
                            else
                            {
                                new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The user is already logged");
                            }
                        }
                        else
                        {
                            new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The password isn't correct");
                        }
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The introduced nickname doesn't exists");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", InvalidValuesInTextFieldsTextGenerator());
                }

                profileNonCallbackMethodsClient.Close();

            }
            catch (TimeoutException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedNotInGameConnectionErrorPopUp();
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedNotInGameConnectionErrorPopUp();
            }
        }
        #endregion



        #region Auxiliary methods
        private string InvalidValuesInTextFieldsTextGenerator()
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
                finalText += resourceManager.GetString("The text fields with invalid values are", cultureInfo);
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
