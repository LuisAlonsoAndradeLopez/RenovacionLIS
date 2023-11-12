using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using domain;
using DomainStatuses;
using Renovación_LIS_Client.ServicePlayerReference;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para LoginView.xaml
    /// </summary>
    public partial class LoginView : Page
    {
        private MainWindow mainWindow;

        public LoginView(MainWindow mainWindow)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
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

                            mainWindow.SetProfileToLoggedProfile(profile);

                            NavigationService navigationService = NavigationService.GetNavigationService(this);
                            navigationService.Navigate(new MenuView(mainWindow, profile));
                        }
                        else
                        {
                            MessageBox.Show("El Usuario ya está Logueado", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("La contraseña no es correcta", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                else
                {
                    MessageBox.Show("El nickname introducido no existe", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show(invalidValuesInTextFieldsTextGenerator(), "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
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
                finalText = finalText + "Los campos de texto con datos inválidos son: ";
            }

            if (!nickNameMatch.Success)
            {
                finalText = finalText + "Nickname.";
                textFieldsWithIncorrectValues++;
            }

            if (!passwordMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", Contraseña.";
                }
                else
                {
                    finalText = finalText + "Contraseña.";
                }

                textFieldsWithIncorrectValues++;
            }

            return finalText;
        }
    }
}
