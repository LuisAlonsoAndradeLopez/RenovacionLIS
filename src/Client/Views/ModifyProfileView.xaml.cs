﻿using System;
using System.Globalization;
using System.IO;
using System.Resources;
using System.ServiceModel;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.Helpers;
using Client.ServicePlayerReference;
using Client.ServiceProfileForNonCallbackMethodsReference;
using MessageBox = System.Windows.MessageBox;
using OpenFileDialog = System.Windows.Forms.OpenFileDialog;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para ModifyProfileView.xaml
    /// </summary>
    public partial class ModifyProfileView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        #endregion



        #region Constructors
        public ModifyProfileView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);

            InitializeComponent();

            NamesTextBox.Text = MainWindow.loggedProfile.Player.Names;
            SurnamesTextBox.Text = MainWindow.loggedProfile.Player.Surnames;
            EmailTextBox.Text = MainWindow.loggedProfile.Player.Email;
            NicknameTextBox.Text = MainWindow.loggedProfile.Player.NickName;
            BirthDayDatePicker.SelectedDate = MainWindow.loggedProfile.Player.BirthDate;

            byte[] profileImageData = Convert.FromBase64String(MainWindow.loggedProfile.ProfileImage);

            if (profileImageData != null)
            {
                try
                {
                    BitmapImage imageSource = new BitmapImage();
                    imageSource.BeginInit();
                    imageSource.StreamSource = new MemoryStream(profileImageData);
                    imageSource.EndInit();

                    ProfilePictureImage.Source = imageSource;
                }
                catch (Exception ex)
                {
                    string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                    File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                }
            }
        }
        #endregion



        #region Methods for GUIs elements events
        private void CancelButton(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new MenuView(mainWindow));

                SongManager.Instance.PlayClickSound();
            }
            catch (TimeoutException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        private void ModifyProfileButton(object sender, RoutedEventArgs e)
        {
            mainWindow.RestartProfileCallbackMethodsClient();

            PlayerClient playerClient = new PlayerClient();
            playerClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);
            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (InvalidValuesInTextFieldsTextGenerator() == "")
                {
                    if (BirthDayDatePicker.SelectedDate <= DateTime.Now)
                    {

                        if (!playerClient.TheEmailIsAlreadyRegisted(EmailTextBox.Text) || EmailTextBox.Text == MainWindow.loggedProfile.Player.Email)
                        {
                            if (!playerClient.TheNicknameIsAlreadyRegisted(NicknameTextBox.Text) || NicknameTextBox.Text == MainWindow.loggedProfile.Player.NickName)
                            {
                                ServicePlayerReference.Players players = new ServicePlayerReference.Players
                                {
                                    IDPlayer = MainWindow.loggedProfile.Player.IDPlayer,
                                    Names = NamesTextBox.Text,
                                    Surnames = SurnamesTextBox.Text,
                                    Email = EmailTextBox.Text,
                                    NickName = NicknameTextBox.Text,
                                    BirthDate = (DateTime)BirthDayDatePicker.SelectedDate
                                };

                                playerClient.ModifyPlayer(players);

                                if (ImageRouteTextBlock.Text != "")
                                {
                                    byte[] imageData = File.ReadAllBytes(ImageRouteTextBlock.Text);

                                    if (imageData.Length <= 1048576)
                                    {
                                        profileNonCallbackMethodsClient.ModifyProfileImage(MainWindow.loggedProfile.IDProfile, Convert.ToBase64String(imageData));
                                    }
                                    else
                                    {
                                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The file shouldn't be larger than 1 MB");
                                        return;
                                    }
                                }
                                new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Profile modified successfully!!!");

                                MainWindow.loggedProfile = profileNonCallbackMethodsClient.GetProfileByPlayerID((int)MainWindow.loggedProfile.Player.IDPlayer);

                                MainWindow.profileCallbackMethodsClient.UpdateFriendsListsToAllConnectedClients();

                                NavigationService navigationService = NavigationService.GetNavigationService(this);
                                navigationService.Navigate(new MenuView(mainWindow));

                                SongManager.Instance.PlayClickSound();
                            }
                            else
                            {
                                new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "Nickname already on use");
                            }
                        }
                        else
                        {
                            new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "Email already on use");
                        }                        
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "Birth date should be before than the actual date");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", InvalidValuesInTextFieldsTextGenerator());
                }

                playerClient.Close();
                profileNonCallbackMethodsClient.Close();
            }
            catch (TimeoutException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }

        }

        private void SelectImageButton(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog
            {
                Filter = "Image Files (*.jpg, *.png, *jpeg)|*.jpg;*.png;*.jpeg",
                Title = resourceManager.GetString("Select an image", cultureInfo)
            };

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                BitmapImage imageSource = new BitmapImage(new Uri(openFileDialog.FileName));
                ProfilePictureImage.Source = imageSource;
                ImageRouteTextBlock.Text = openFileDialog.FileName;
            }
        }
        #endregion



        #region Auxiliary methods
        private string InvalidValuesInTextFieldsTextGenerator()
        {
            int textFieldsWithIncorrectValues = 0;

            string finalText = "";

            string namesPattern = "^[A-Za-záéíóúÁÉÍÓÚ\\s'-]{2,50}$";
            string surnamesPattern = "^[A-Za-záéíóúÁÉÍÓÚ\\s'-]{2,50}$";
            string emailPattern = "^[\\w\\.-]+@[\\w\\.-]+\\.\\w+";
            string nickNamePattern = "^[A-Za-z0-9\\s'-]{2,50}$";

            Regex namesRegex = new Regex(namesPattern);
            Regex surnamesRegex = new Regex(surnamesPattern);
            Regex emailRegex = new Regex(emailPattern);
            Regex nickNameRegex = new Regex(nickNamePattern);

            Match namesMatch = namesRegex.Match(NamesTextBox.Text);
            Match surnamesMatch = surnamesRegex.Match(SurnamesTextBox.Text);
            Match emailMatch = emailRegex.Match(EmailTextBox.Text);
            Match nickNameMatch = nickNameRegex.Match(NicknameTextBox.Text);

            if (!namesMatch.Success || !surnamesMatch.Success || !emailMatch.Success ||
                !nickNameMatch.Success)
            {
                finalText += resourceManager.GetString("The text fields with invalid values are");
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
            }

            return finalText;
        }

        public void GoToLobbyView()
        {
            try
            {
                mainWindow.OpenTheLobbyView(this);
            }
            catch (TimeoutException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
        #endregion

    }
}
