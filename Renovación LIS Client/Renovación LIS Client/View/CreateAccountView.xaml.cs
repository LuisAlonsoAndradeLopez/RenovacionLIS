using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.ServiceModel;
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
using Renovación_LIS_Client.ServicePlayerReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para CreateAccountView.xaml
    /// </summary>
    public partial class CreateAccountView : Page
    {
        public CreateAccountView()
        {
            InitializeComponent();
        }

        private void CreateAccountButton(object sender, RoutedEventArgs e)
        {
            if (invalidValuesInTextFieldsTextGenerator() == "")
            {
                SecureString securePassword = PasswordPasswordBox.SecurePassword;
                string Password = new System.Net.NetworkCredential(string.Empty, securePassword).Password;

                SecureString secureConfirmPassword = ConfirmPasswordPasswordBox.SecurePassword;
                string ConfirmPassword = new System.Net.NetworkCredential(string.Empty, secureConfirmPassword).Password;

                if (Password == ConfirmPassword)
                {
                    PlayerClient client = new PlayerClient();
                    if (!client.TheEmailIsAlreadyRegisted(EmailTextBox.Text))
                    {
                        if (!client.TheNicknameIsAlreadyRegisted(NickNameTextBox.Text))
                        {
                            Players players = new Players();
                            players.Name = NamesTextBox.Text;
                            players.FirstSurname = SurnamesTextBox.Text;
                            players.Email = EmailTextBox.Text;
                            players.NickName = NickNameTextBox.Text;
                            players.BirthDate = BirthdayDatePicker.SelectedDate;

                            string salt = BCrypt.Net.BCrypt.GenerateSalt();
                            string hashedPassword = BCrypt.Net.BCrypt.HashPassword(Password, salt);
                            players.Password = hashedPassword;

                            try
                            {
                                client.AddPlayer(players);
                            }
                            catch (Exception ex)
                            {
                                Console.WriteLine(ex.StackTrace);
                            }

                            MessageBox.Show("Cuenta creada con éxito", "Alert", MessageBoxButton.OK, MessageBoxImage.None);
                            NavigationService navigationService = NavigationService.GetNavigationService(this);
                            navigationService.Navigate(new LoginView());
                        }
                        else
                        {
                            MessageBox.Show("El nickname ya está usado", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("El correo electrónico ya está usado", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Las contraseñas no coinciden", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show(invalidValuesInTextFieldsTextGenerator(), "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        //[CallbackBehavior(UseSynchronizationContext = false)]
        /*class CallbackHandler : ServicePlayerReference.IPlayerCallback
        {
            public void Response(String response)
            {
                Console.WriteLine(response);
            }
        }*/

        private void GoLoginButton(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView());
        }

        private String invalidValuesInTextFieldsTextGenerator()
        {
            int textFieldsWithIncorrectValues = 0;

            string finalText = "";

            string namesPattern = "^[A-Za-z\\s'-]{2,50}$";
            string surnamesPattern = "^[A-Za-z\\s'-]{2,50}$";
            string emailPattern = "^[\\w\\.-]+@[\\w\\.-]+\\.\\w+";
            string nickNamePattern = "^[A-Za-z\\s'-]{2,50}$";
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
                finalText = finalText + "Los campos de texto con datos inválidos son: ";
            }

            if (!namesMatch.Success)
            {
                finalText = finalText + "Nombre(s).";
                textFieldsWithIncorrectValues++;
            }

            if (!surnamesMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", Apellido(s).";
                }
                else
                {
                    finalText = finalText + "Apellido(s).";
                }

                textFieldsWithIncorrectValues++;
            }

            if (!emailMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", Correo Electrónico.";
                }
                else
                {
                    finalText = finalText + "Correo Electrónico.";
                }

                textFieldsWithIncorrectValues++;
            }

            if (!nickNameMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", Nickname.";
                }
                else
                {
                    finalText = finalText + "Nickname.";
                }

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

            if (!confirmPasswordMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", Confirmar Contraseña.";
                }
                else
                {
                    finalText = finalText + "Confirmar Contraseña.";
                }

                textFieldsWithIncorrectValues++;
            }

            return finalText;
        }
    }

}
