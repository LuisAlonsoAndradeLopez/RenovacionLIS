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
using System.Globalization;
using System.Resources;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ForgotPassword.xaml
    /// </summary>
    public partial class ForgotPassword : Page
    {
        private MainWindow mainWindow;
        private Random random = new Random();
        private int verificationCode;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        public ForgotPassword(MainWindow mainWindow)
        {
            InitializeComponent();
            
            this.mainWindow = mainWindow;
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            verificationCode = random.Next(100001, 1000000);
        }

        private void CancelButton1(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));
        }

        private void CancelButton2(object sender, RoutedEventArgs e)
        {
            IntroduceDataBorder.Visibility = Visibility.Visible;
            IntroduceCodeBorder.Visibility = Visibility.Hidden;
            EmailTextField.Text = string.Empty;
            NewPasswordPasswordBox.Clear();
            ConfirmNewPasswordPasswordBox.Clear();
            verificationCode = random.Next(100001, 1000000);
        }

        private void ChangePasswordButton(object sender, RoutedEventArgs e)
        {
            if(IntroduceCodeTextField.Text == verificationCode.ToString())
            {
                PlayerClient playerClient = new PlayerClient();
                SecureString newPasswordSecurePassword = NewPasswordPasswordBox.SecurePassword;
                string newPassword = new System.Net.NetworkCredential(string.Empty, newPasswordSecurePassword).Password;

                string salt = BCrypt.Net.BCrypt.GenerateSalt();
                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(newPassword, salt);
                
                playerClient.ModifyPasswordByEmail(EmailTextField.Text, hashedPassword);
                MessageBox.Show(
                    resourceManager.GetString("Password changed sucessfully!!!", cultureInfo),
                    resourceManager.GetString("Success!!!", cultureInfo),
                    MessageBoxButton.OK,
                    MessageBoxImage.None
                );
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LoginView(mainWindow));

                playerClient.Close();
            }
            else
            {
                MessageBox.Show(
                    resourceManager.GetString("Invalid code", cultureInfo),
                    resourceManager.GetString("Too Bad!!!", cultureInfo),
                    MessageBoxButton.OK,
                    MessageBoxImage.Error
                );
            }
        }

        private void SendCodeButton (object sender, RoutedEventArgs e)
        {
            if (invalidValuesInTextFieldsTextGenerator() == "")
            {
                PlayerClient playerClient = new PlayerClient();

                SecureString newPasswordSecurePassword = NewPasswordPasswordBox.SecurePassword;
                string newPassword = new System.Net.NetworkCredential(string.Empty, newPasswordSecurePassword).Password;

                SecureString confirmNewPasswordSecurePassword = ConfirmNewPasswordPasswordBox.SecurePassword;
                string confirmNewPassword = new System.Net.NetworkCredential(string.Empty, confirmNewPasswordSecurePassword).Password;

                if (newPassword == confirmNewPassword)
                {
                    if (playerClient.TheEmailIsAlreadyRegisted(EmailTextField.Text))
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
                        mail.Subject = resourceManager.GetString("Code for change your password", cultureInfo);
                        mail.Body = resourceManager.GetString("Introduce this code for change your password", cultureInfo) + verificationCode;

                        try
                        {
                            smtpClient.Send(mail);
                        }
                        catch (Exception ex) { 
                        
                        }
                    }
                    else
                    {
                        MessageBox.Show(
                            resourceManager.GetString("Email not found", cultureInfo),
                            resourceManager.GetString("Too Bad!!!", cultureInfo),
                            MessageBoxButton.OK,
                            MessageBoxImage.Error
                        );
                    }
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

                playerClient.Close();
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
                finalText = finalText + resourceManager.GetString("The text fields with invalid values are", cultureInfo);
            }

            if (!emailMatch.Success)
            {
                finalText = finalText + resourceManager.GetString("Email", cultureInfo) + ".";
                textFieldsWithIncorrectValues++;
            }

            if (!newPasswordMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + "," + resourceManager.GetString("New Password", cultureInfo) + ".";
                }
                else
                {
                    finalText = finalText + resourceManager.GetString("New Password", cultureInfo) + ".";
                }

                textFieldsWithIncorrectValues++;                
            }

            if (!confirmNewPasswordMatch.Success)
            {
                if (textFieldsWithIncorrectValues >= 1)
                {
                    finalText = finalText.Substring(0, finalText.Length - 1);
                    finalText = finalText + "," + resourceManager.GetString("Confirm Password", cultureInfo) + ".";
                }
                else
                {
                    finalText = finalText + resourceManager.GetString("Confirm Password", cultureInfo) + ".";
                }
                
                textFieldsWithIncorrectValues++;
            }

            return finalText;
        }
    }
}
