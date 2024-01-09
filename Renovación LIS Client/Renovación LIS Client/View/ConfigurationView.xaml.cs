using domain;
using Renovación_LIS_Client.Helpers;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
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

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ConfigurationView.xaml
    /// </summary>
    public partial class ConfigurationView : Page
    {
        public ConfigurationView()
        {
            InitializeComponent();
            VolumeSlider.Value = SongManager.Instance.GetVolume()*100;
            SoundSlider.Value = SongManager.Instance.GetVolumeSound() * 100;
            SoundValue.Content = SongManager.Instance.GetVolumeSound() * 100 + "%";
            ChangeLanguageLabel();
        }

        private void ApplyChangesButton(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            string CurrentLanguage = TxtLanguages.Text;
            switch (CurrentLanguage)
            {
                case "Español":
                case "Spanish":
                    System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("es"); ;
                    break;

                case "Inglés":
                case "English":
                    System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en"); ;
                    break;

            }

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(new Player())); //Modificar
        }

        private void ExitButton(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();
        }

        private void ChangeLanguageButton(object sender, MouseButtonEventArgs e)
        {
          
            string CurrentLanguage = TxtLanguages.Text;

            switch (CurrentLanguage)
            {
                case "Español":
                case "Spanish":
                    TxtLanguages.Text = Properties.Resources.English;
                    break;

                case "Inglés":
                case "English":
                    TxtLanguages.Text = Properties.Resources.Spanish;
                    break;
                
            }


        }

        private void ChangeLanguageLabel()
        {
            CultureInfo CurrentLanguage = CultureInfo.CurrentUICulture;


            if (CurrentLanguage.Name == "en")
            {
                TxtLanguages.Text = Properties.Resources.English;
            }
            else
            {
                TxtLanguages.Text = Properties.Resources.Spanish;
            }


        }

        private void BackgroundMusicVolumeSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            SongManager.Instance.ChangeVolumeSong(VolumeSlider.Value/100);
            MusicValue.Content = (int)VolumeSlider.Value + "%";
        }

        private void SoundMusicSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            SongManager.Instance.ChangeVolumeSound(SoundSlider.Value/100);
            SoundValue.Content = (int)SoundSlider.Value + "%";
        }

        private void PlayHoverSound(object sender, MouseEventArgs e)
        {
            SongManager.Instance.PlayHoverSound();

        }

        private void CancelChangesButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(new Player())); //Modificar
        }

    }
}
