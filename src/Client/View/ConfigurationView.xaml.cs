using System;
using System.Globalization;
using System.ServiceModel;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.Helpers;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ConfigurationView.xaml
    /// </summary>
    public partial class ConfigurationView : Page
    {
        #region Attributes
        private readonly MainWindow mainWindow;
        private readonly bool entryToThisPageViaLobbyView;
        #endregion



        #region Constructors
        public ConfigurationView(MainWindow mainWindow)
        {
            this.mainWindow = mainWindow;

            PageStateManager.CurrentPage = this;
            entryToThisPageViaLobbyView = false;

            InitializeComponent();
            VolumeSlider.Value = SongManager.Instance.GetVolume() * 100;
            SoundSlider.Value = SongManager.Instance.GetVolumeSound() * 100;
            SoundValue.Content = SongManager.Instance.GetVolumeSound() * 100 + "%";
            ChangeLanguageLabel();
        }

        public ConfigurationView(MainWindow mainWindow, bool entryToThisPageViaLobbyView)
        {
            this.mainWindow = mainWindow;

            PageStateManager.CurrentPage = this;
            this.entryToThisPageViaLobbyView = entryToThisPageViaLobbyView;

            InitializeComponent();
            VolumeSlider.Value = SongManager.Instance.GetVolume() * 100;
            SoundSlider.Value = SongManager.Instance.GetVolumeSound() * 100;
            SoundValue.Content = SongManager.Instance.GetVolumeSound() * 100 + "%";
            ChangeLanguageLabel();
        }
        #endregion



        #region Methods for GUIs elements events
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
        }

        private void CancelChangesButton(object sender, RoutedEventArgs e)
        {
            try
            {
                if (entryToThisPageViaLobbyView)
                {
                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                    navigationService.Navigate(new LobbyView(mainWindow));
                }
                else
                {
                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                    navigationService.Navigate(new MenuView(mainWindow));
                }
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
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

        private void BackgroundMusicVolumeSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            SongManager.Instance.ChangeVolumeSong(VolumeSlider.Value / 100);
            MusicValue.Content = (int)VolumeSlider.Value + "%";
        }

        private void SoundMusicSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            SongManager.Instance.ChangeVolumeSound(SoundSlider.Value / 100);
            SoundValue.Content = (int)SoundSlider.Value + "%";
        }

        private void PlayHoverSound(object sender, MouseEventArgs e)
        {
            SongManager.Instance.PlayHoverSound();
        }
        #endregion



        #region Auxiliary methods
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

        public void ExitFromThisPageForBeingExpeltFromLobbyView()
        {
            try
            {
                if (entryToThisPageViaLobbyView)
                {
                    LobbyView.chatCallbackMethodsClient.LeaveChat(MainWindow.loggedProfile.Player.NickName);

                    SongManager.Instance.StopMusic();
                    SongManager.Instance.PlayMainSong();

                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                    navigationService.Navigate(new MenuView(mainWindow));
                    new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Uh oh!", "You have been banned!!!!!");
                }
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        public void GoToLobbyView()
        {
            try
            {
                if (!entryToThisPageViaLobbyView)
                {
                    mainWindow.OpenTheLobbyView(this);
                }
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        public void GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin()
        {
            try
            {
                if (entryToThisPageViaLobbyView)
                {
                    Thread.Sleep(1000);
                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                    navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow));
                }
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        public void StartBlackScreenAnimation()
        {
            var animation = new DoubleAnimation
            {
                From = 0,
                To = 1,
                Duration = TimeSpan.FromSeconds(1),
                FillBehavior = FillBehavior.HoldEnd
            };

            BlackScreenRectangle.Visibility = Visibility.Visible;
            BlackScreenRectangle.BeginAnimation(Rectangle.OpacityProperty, animation);
        }
        #endregion

    }
}
