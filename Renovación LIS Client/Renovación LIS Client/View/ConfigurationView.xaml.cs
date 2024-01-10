using System.Globalization;
using System.Resources;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using Renovación_LIS_Client.Helpers;
using Renovación_LIS_Client.ServiceFriendRequestForCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ConfigurationView.xaml
    /// </summary>
    public partial class ConfigurationView : Page
    {
        //TODO:
        //En configuration view pulirle todo (al salir que salga a menuview o lobbyview bien
        //Configurationview debe de tener todo lo que tiene friendsview (expulsar jugador, invitar amigo y pantalla rené)
        //levelview internacionalizar y botones bien
        //terminar crucigramas multijugador
        //kate crucigramas un jugador

        private readonly MainWindow mainWindow;
        private readonly FriendRequestCallbackMethodsClient friendRequestCallbackMethodsClient;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        private readonly bool entryToThisPageViaLobbyView;

        public ConfigurationView(MainWindow mainWindow)
        {
            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

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

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            PageStateManager.CurrentPage = this;
            this.entryToThisPageViaLobbyView = entryToThisPageViaLobbyView;

            InitializeComponent();
            VolumeSlider.Value = SongManager.Instance.GetVolume() * 100;
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
        }

        private void ExitButton(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

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

        private void CancelChangesButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow));
        }

    }
}
