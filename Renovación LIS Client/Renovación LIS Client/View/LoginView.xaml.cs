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
using Renovación_LIS_Client.ServicePlayerReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para LoginView.xaml
    /// </summary>
    public partial class LoginView : Page
    {
        public LoginView()
        {
            InitializeComponent();
        }

        private void OpenForgotPasswordPage(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ForgotPassword());
        }

        private void OpenSignUpPage(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new CreateAccountView());
        }

        private void LoginButton(object sender, RoutedEventArgs e)
        {
            if (invalidValuesInTextFieldsTextGenerator() == "")
            {
                SecureString passwordSecurePassword = PasswordPasswordBox.SecurePassword;
                string password = new System.Net.NetworkCredential(string.Empty, passwordSecurePassword).Password;

                PlayerClient client = new PlayerClient();
                Player player = client.GetPlayerByNickname(NicknameTextField.Text);
                
                if (player != null)
                {
                    string storedHash = Encoding.UTF8.GetString(Encoding.UTF8.GetBytes(player.Password));

                    if (BCrypt.Net.BCrypt.Verify(password, storedHash))
                    {
                        NavigationService navigationService = NavigationService.GetNavigationService(this);
                        navigationService.Navigate(new MenuView(player));
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

            string nickNamePattern = "^[A-Za-z\\s.'-]{2,50}$";
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
