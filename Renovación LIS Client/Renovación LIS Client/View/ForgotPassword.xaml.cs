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

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ForgotPassword.xaml
    /// </summary>
    public partial class ForgotPassword : Page
    {
        public ForgotPassword()
        {
            InitializeComponent();
        }

        private void CancelButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView());
        }

        private void SendCodeButton (object sender, RoutedEventArgs e)
        {
            if (invalidValuesInTextFieldsTextGenerator() == "")
            {
                Random random = new Random();
                int verificationCode = random.Next(100001, 1000000);


                // Set up the SMTP client with your email provider's SMTP server and port.
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Port = 587; // Port number depends on your email provider.
                smtpClient.Credentials = new NetworkCredential("renovacionlis230@gmail.com", "vcgj qyor bews jptu");
                smtpClient.EnableSsl = true; // Enable SSL for secure communication.

                // Create a MailMessage object.
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("renovacionlis230@gmail.com");
                mail.To.Add(new MailAddress(EmailTextField.Text));
                mail.Subject = "Wele a obo";
                mail.Body = "Introduce este codigazo para cambiar la contraseña: " + verificationCode;

                try
                {
                    // Send the email.
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
                MessageBox.Show(invalidValuesInTextFieldsTextGenerator(), "Alert", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            
        }


        private String invalidValuesInTextFieldsTextGenerator()
        {
            string finalText = "";
            
            string emailPattern = "^[\\w\\.-]+@[\\w\\.-]+\\.\\w+";
            string newPasswordPattern = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$%^&+=!])(?!.*\\s).{8,}$";
            string confirmNewPasswordPattern = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$%^&+=!])(?!.*\\s).{8,}$";

            // Create a Regex object.
            Regex emailRegex = new Regex(emailPattern);
            Regex newPasswordRegex = new Regex(newPasswordPattern);
            Regex confirmNewPasswordRegex = new Regex(confirmNewPasswordPattern);

            // Use the Regex object to match the pattern.
            Match emailMatch = emailRegex.Match(EmailTextField.Text);
            Match newPasswordMatch = newPasswordRegex.Match(NewPasswordTextField.Text);
            Match confirmNewPasswordMatch = confirmNewPasswordRegex.Match(ConfirmNewPasswordTextField.Text);

            if (!emailMatch.Success || !newPasswordMatch.Success || !confirmNewPasswordMatch.Success)
            {
                finalText = finalText + "Los campos de texto con datos inválidos son: ";
            }

            if (!emailMatch.Success)
            {
                finalText = finalText + "Correo Electrónico ";
            }

            if (!newPasswordMatch.Success)
            {
                finalText = finalText + "Nueva Contraseña ";
            }

            if (!confirmNewPasswordMatch.Success)
            {
                finalText = finalText + "Confirmar Contraseña.";
            }

            return finalText;
        }
    }
}
