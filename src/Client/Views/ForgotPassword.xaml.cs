using System;
using System.Globalization;
using System.Net;
using System.Net.Mail;
using System.Resources;
using System.Security;
using System.ServiceModel;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.Helpers;
using Client.ServicePlayerReference;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para ForgotPassword.xaml
    /// </summary>
    public partial class ForgotPassword : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        private int verificationCode;
        #endregion



        #region Constructors
        public ForgotPassword(MainWindow mainWindow)
        {
            this.mainWindow = mainWindow;
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);

            verificationCode = new Random().Next(100001, 1000000);
            InitializeComponent();
        }
        #endregion



        #region Methods for GUIs elements events
        private void CancelButton1(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));

            SongManager.Instance.PlayClickSound();
        }

        private void CancelButton2(object sender, RoutedEventArgs e)
        {
            IntroduceDataBorder.Visibility = Visibility.Visible;
            IntroduceCodeBorder.Visibility = Visibility.Hidden;
            EmailTextField.Text = string.Empty;
            NewPasswordPasswordBox.Clear();
            ConfirmNewPasswordPasswordBox.Clear();
            verificationCode = new Random().Next(100001, 1000000);

            SongManager.Instance.PlayClickSound();
        }

        private void ChangePasswordButton(object sender, RoutedEventArgs e)
        {
            PlayerClient playerClient = new PlayerClient();
            playerClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (IntroduceCodeTextField.Text == verificationCode.ToString())
                {
                    SecureString newPasswordSecurePassword = NewPasswordPasswordBox.SecurePassword;
                    string newPassword = new System.Net.NetworkCredential(string.Empty, newPasswordSecurePassword).Password;

                    string salt = BCrypt.Net.BCrypt.GenerateSalt();
                    string hashedPassword = BCrypt.Net.BCrypt.HashPassword(newPassword, salt);

                    playerClient.ModifyPasswordByEmail(EmailTextField.Text, hashedPassword);

                    new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Password changed sucessfully!!!");

                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                    navigationService.Navigate(new LoginView(mainWindow));

                    SongManager.Instance.PlayClickSound();
                }
                else
                {
                    new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "Invalid code");
                }

                playerClient.Close();
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedNotInGameConnectionErrorPopUp();
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedNotInGameConnectionErrorPopUp();
            }

        }

        private void SendCodeButton(object sender, RoutedEventArgs e)
        {
            PlayerClient playerClient = new PlayerClient();
            playerClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (InvalidValuesInTextFieldsTextGenerator() == "")
                {

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

                            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com")
                            {
                                Port = 587,
                                Credentials = new NetworkCredential("renovacionlis230@gmail.com", "vcgj qyor bews jptu"),
                                EnableSsl = true
                            };

                            MailMessage mail = new MailMessage
                            {
                                From = new MailAddress("renovacionlis230@gmail.com")
                            };
                            mail.To.Add(new MailAddress(EmailTextField.Text));
                            mail.Subject = resourceManager.GetString("Code for change your password", cultureInfo);
                            mail.Body = resourceManager.GetString("Introduce this code for change your password", cultureInfo) + verificationCode;

                            smtpClient.Send(mail);
                        }
                        else
                        {
                            new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "Email not found");
                        }
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The passwords aren't the same");
                    }

                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", InvalidValuesInTextFieldsTextGenerator());
                }

                playerClient.Close();
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedNotInGameConnectionErrorPopUp();
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedNotInGameConnectionErrorPopUp();
            }

        }
        #endregion



        #region Auxiliary methods
        private string InvalidValuesInTextFieldsTextGenerator()
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
                finalText += resourceManager.GetString("The text fields with invalid values are", cultureInfo);
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
            }

            return finalText;
        }
        #endregion
    }
}
