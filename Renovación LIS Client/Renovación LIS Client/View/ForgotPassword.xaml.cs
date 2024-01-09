using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
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
using System.Text.RegularExpressions;
using System.ServiceModel;
using Renovación_LIS_Client.ServicePlayerReference;
using System.Security;
using Renovación_LIS_Client.Helpers;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ForgotPassword.xaml
    /// </summary>
    public partial class ForgotPassword : Page
    {
        Random random = new Random();
        int verificationCode;

        public ForgotPassword()
        {
            InitializeComponent();
            verificationCode = random.Next(100001, 1000000);
        }

        private void CancelButton1(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView());
        }

        private void CancelButton2(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            IntroduceDataBorder.Visibility = Visibility.Visible;
            IntroduceCodeBorder.Visibility = Visibility.Hidden;
            EmailTextField.Text = string.Empty;
            NewPasswordPasswordBox.Clear();
            ConfirmNewPasswordPasswordBox.Clear();
            verificationCode = random.Next(100001, 1000000);
        }

        private void ChangePasswordButton(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            if (IntroduceCodeTextField.Text == verificationCode.ToString())
            {
                PlayerClient client = new PlayerClient();
                SecureString newPasswordSecurePassword = NewPasswordPasswordBox.SecurePassword;
                string newPassword = new System.Net.NetworkCredential(string.Empty, newPasswordSecurePassword).Password;

                string salt = BCrypt.Net.BCrypt.GenerateSalt();
                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(newPassword, salt);
                
                client.ModifyPasswordByEmail(EmailTextField.Text, hashedPassword);
                MessageBox.Show("Contraseña cambiada exitosamente", "Alert", MessageBoxButton.OK, MessageBoxImage.None);
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LoginView());
            }
            else
            {
                MessageBox.Show("El código es inválido", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void SendCodeButton (object sender, RoutedEventArgs e)
        {
            if (invalidValuesInTextFieldsTextGenerator() == "")
            {
                PlayerClient client = new PlayerClient();

                SecureString newPasswordSecurePassword = NewPasswordPasswordBox.SecurePassword;
                string newPassword = new System.Net.NetworkCredential(string.Empty, newPasswordSecurePassword).Password;

                SecureString confirmNewPasswordSecurePassword = ConfirmNewPasswordPasswordBox.SecurePassword;
                string confirmNewPassword = new System.Net.NetworkCredential(string.Empty, confirmNewPasswordSecurePassword).Password;

                if (newPassword == confirmNewPassword)
                {
                    if (client.TheEmailIsAlreadyRegisted(EmailTextField.Text))
                    {
                        IntroduceDataBorder.Visibility = Visibility.Hidden;
                        IntroduceCodeBorder.Visibility = Visibility.Visible;

                        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                        smtpClient.Port = 587;
                        smtpClient.Credentials = new NetworkCredential("renovacionlis230@gmail.com", "vcgj qyor bews jptu");
                        smtpClient.EnableSsl = true;

                        MailMessage mail = new MailMessage();
                        mail.From = new MailAddress("renovacionlis230@gmail.com");
                        mail.To.Add(new MailAddress(EmailTextField.Text));
                        mail.Subject = "Codigazo para cambiar la contraseña";
                        mail.Body = "Introduce este codigazo para cambiar la contraseña: " + verificationCode;

                        try
                        {
                            smtpClient.Send(mail);
                            Console.WriteLine("Email sent successfully.");
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine("Failed to send the email: " + ex.Message);
                        }
                    }
                    else
                    {
                        MessageBox.Show("El correo electrónico no fue encontrado", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private String invalidValuesInTextFieldsTextGenerator()
        {
            int textFieldsWithIncorrectValues = 0;

            string finalText = "";
            
            string emailPattern = "^[\\w\\.-]+@[\\w\\.-]+\\.\\w+";
            string newPasswordPattern = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$%^&+=!])(?!.*\\s).{8,}$";
            string confirmNewPasswordPattern = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$%^&+=!])(?!.*\\s).{8,}$";

            Regex emailRegex = new Regex(emailPattern);
            Regex newPasswordRegex = new Regex(newPasswordPattern);
            Regex confirmNewPasswordRegex = new Regex(confirmNewPasswordPattern);

            Match emailMatch = emailRegex.Match(EmailTextField.Text);

            SecureString newPasswordSecurePassword = NewPasswordPasswordBox.SecurePassword;
            string newPassword = new System.Net.NetworkCredential(string.Empty, newPasswordSecurePassword).Password;

            SecureString confirmNewPasswordSecurePassword = ConfirmNewPasswordPasswordBox.SecurePassword;
            string confirmNewPassword = new System.Net.NetworkCredential(string.Empty, confirmNewPasswordSecurePassword).Password;

            Match newPasswordMatch = newPasswordRegex.Match(newPassword);
            Match confirmNewPasswordMatch = confirmNewPasswordRegex.Match(confirmNewPassword);

            if (!emailMatch.Success || !newPasswordMatch.Success || !confirmNewPasswordMatch.Success)
            {
                finalText = finalText + "Los campos de texto con datos inválidos son: ";
            }

            if (!emailMatch.Success)
            {
                finalText = finalText + "Correo Electrónico.";
                textFieldsWithIncorrectValues++;
            }

            if (!newPasswordMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + ", Nueva Contraseña.";
                }
                else
                {
                    finalText = finalText + "Nueva Contraseña.";
                }

                textFieldsWithIncorrectValues++;                
            }

            if (!confirmNewPasswordMatch.Success)
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
