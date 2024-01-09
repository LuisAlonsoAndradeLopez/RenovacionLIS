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
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using domain;
using Microsoft.Win32;
using Renovación_LIS_Client.Helpers;
using Renovación_LIS_Client.ServicePlayerReference;
using MessageBox = System.Windows.MessageBox;
using OpenFileDialog = System.Windows.Forms.OpenFileDialog;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ModifyProfileView.xaml
    /// </summary>
    public partial class ModifyProfileView : Page
    {
        Player loggedPlayer = new Player();

        public ModifyProfileView(Player loggedPlayer)
        {
            InitializeComponent();

            this.loggedPlayer = loggedPlayer;

            NamesTextBox.Text = loggedPlayer.Name;
            SurnamesTextBox.Text = loggedPlayer.FirstSurname;
            EmailTextBox.Text = loggedPlayer.Email;
            NicknameTextBox.Text = loggedPlayer.NickName;
            BirthDayDatePicker.SelectedDate = loggedPlayer.BirthDate;
        }

        private void CancelButton(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(loggedPlayer));
        }

        private void ModifyProfileButton(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            if (invalidValuesInTextFieldsTextGenerator() == "")
            {
                PlayerClient client = new PlayerClient();

                if (!client.TheEmailIsAlreadyRegisted(EmailTextBox.Text) || EmailTextBox.Text == loggedPlayer.Email)
                {
                    if (!client.TheNicknameIsAlreadyRegisted(NicknameTextBox.Text) || NicknameTextBox.Text == loggedPlayer.NickName)
                    {
                        Players players = new Players();
                        players.IDPlayer = loggedPlayer.IDPlayer;
                        players.Name = NamesTextBox.Text;
                        players.FirstSurname = SurnamesTextBox.Text;
                        players.Email = EmailTextBox.Text;
                        players.NickName = NicknameTextBox.Text;
                        players.BirthDate = BirthDayDatePicker.SelectedDate;

                        client.ModifyPlayer(players);

                        MessageBox.Show("Perfil modificado exitosamente", "Alert", MessageBoxButton.OK, MessageBoxImage.None);

                        loggedPlayer = client.GetPlayerByID((int)loggedPlayer.IDPlayer);
                        
                        NavigationService navigationService = NavigationService.GetNavigationService(this);
                        navigationService.Navigate(new MenuView(loggedPlayer));
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
            openFileDialog.Filter = "Image Files (*.jpg, *.png, *.gif, *.bmp)|*.jpg;*.png;*.gif;*.bmp|All Files (*.*)|*.*";
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

            string namesPattern = "^[A-Za-z\\s.'-]{2,50}$";
            string surnamesPattern = "^[A-Za-z\\s.'-]{2,50}$";
            string emailPattern = "^[\\w\\.-]+@[\\w\\.-]+\\.\\w+";
            string nickNamePattern = "^[A-Za-z\\s.'-]{2,50}$";

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
       
    }
}
