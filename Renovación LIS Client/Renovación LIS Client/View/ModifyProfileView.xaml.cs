using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using domain;
using Microsoft.Win32;
using Renovación_LIS_Client.ServicePlayerReference;
using Renovación_LIS_Client.ServiceProfileReference;
using MessageBox = System.Windows.MessageBox;
using OpenFileDialog = System.Windows.Forms.OpenFileDialog;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ModifyProfileView.xaml
    /// </summary>
    public partial class ModifyProfileView : Page
    {
        Profile loggedProfile = new Profile();

        public ModifyProfileView(Profile loggedProfile)
        {
            InitializeComponent();

            this.loggedProfile = loggedProfile;

            NamesTextBox.Text = loggedProfile.Player.Names;
            SurnamesTextBox.Text = loggedProfile.Player.Surnames;
            EmailTextBox.Text = loggedProfile.Player.Email;
            NicknameTextBox.Text = loggedProfile.Player.NickName;
            BirthDayDatePicker.SelectedDate = loggedProfile.Player.BirthDate;

            byte[] imageData = GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions();

            if (imageData != null)
            {
                try
                {
                    BitmapImage imageSource = new BitmapImage();
                    imageSource.BeginInit();
                    imageSource.StreamSource = new MemoryStream(imageData);
                    imageSource.EndInit();

                    ProfilePictureImage.Source = imageSource;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
            }
            else
            {
                ImageRouteTextBlock.Text = "";
            }
        }

        private void CancelButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(loggedProfile));
        }

        private void ModifyProfileButton(object sender, RoutedEventArgs e)
        {
            if(invalidValuesInTextFieldsTextGenerator() == "")
            {
                PlayerClient playerClient = new PlayerClient();
                ProfileClient profileClient = new ProfileClient();

                if (!playerClient.TheEmailIsAlreadyRegisted(EmailTextBox.Text) || EmailTextBox.Text == loggedProfile.Player.Email)
                {
                    if (!playerClient.TheNicknameIsAlreadyRegisted(NicknameTextBox.Text) || NicknameTextBox.Text == loggedProfile.Player.NickName)
                    {
                        ServicePlayerReference.Players players = new ServicePlayerReference.Players();
                        players.IDPlayer = loggedProfile.Player.IDPlayer;
                        players.Names = NamesTextBox.Text;
                        players.Surnames = SurnamesTextBox.Text;
                        players.Email = EmailTextBox.Text;
                        players.NickName = NicknameTextBox.Text;
                        players.BirthDate = (DateTime)BirthDayDatePicker.SelectedDate;

                        playerClient.ModifyPlayer(players);

                        if (ImageRouteTextBlock.Text != "")
                        {
                            byte[] imageData = File.ReadAllBytes(ImageRouteTextBlock.Text);
                            string fileExtension = Path.GetExtension(ImageRouteTextBlock.Text);
                            string fileName = loggedProfile.Player.NickName + fileExtension;

                            if (imageData.Length <= 51200)
                            {
                                profileClient.UploadImage(fileName, imageData);
                            }
                            else
                            {
                                MessageBox.Show("El archivo no debe de pesar más de 50 KB", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                                return;
                            }
                        }

                        MessageBox.Show("Perfil modificado exitosamente", "Alert", MessageBoxButton.OK, MessageBoxImage.None);

                        loggedProfile = profileClient.GetProfileByPlayerID((int)loggedProfile.Player.IDPlayer);
                        
                        NavigationService navigationService = NavigationService.GetNavigationService(this);
                        navigationService.Navigate(new MenuView(loggedProfile));
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
                MessageBox.Show(invalidValuesInTextFieldsTextGenerator(), "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void SelectImageButton(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image Files (*.jpg, *.png, *jpeg)|*.jpg;*.png;*.jpeg";
            openFileDialog.Title = "Select an Image";

            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                BitmapImage imageSource = new BitmapImage(new Uri(openFileDialog.FileName));
                ProfilePictureImage.Source = imageSource;
                ImageRouteTextBlock.Text = openFileDialog.FileName;
            }
        }

        private String invalidValuesInTextFieldsTextGenerator()
        {
            int textFieldsWithIncorrectValues = 0;

            string finalText = "";

            string namesPattern = "^[A-Za-z\\s'-]{2,50}$";
            string surnamesPattern = "^[A-Za-z\\s'-]{2,50}$";
            string emailPattern = "^[\\w\\.-]+@[\\w\\.-]+\\.\\w+";
            string nickNamePattern = "^[A-Za-z\\s'-]{2,50}$";

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

            return finalText;
        }

        private byte[] GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions()
        {
            ProfileClient profileClient = new ProfileClient();
            string fileName = loggedProfile.Player.NickName + ".png";
            byte[] imageData = profileClient.GetImage(fileName);

            if(imageData == null)
            {
                fileName = loggedProfile.Player.NickName + ".jpg";
                imageData = profileClient.GetImage(fileName);
            }

            if (imageData == null)
            {
                fileName = loggedProfile.Player.NickName + ".jpeg";
                imageData = profileClient.GetImage(fileName);
            }

            return imageData;
        }
    }
}
