using System.Globalization;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Navigation;
using Renovación_LIS_Client.Helpers;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para StartView.xaml
    /// </summary>
    public partial class StartView : Page
    {
        #region Atributes
        private MainWindow mainWindow;
        #endregion

        #region Constructor
        public StartView()
        {
            PageStateManager.CurrentPage = this;

            mainWindow = new MainWindow();
            MainWindow.loggedProfile = null;           

            SongManager.Instance.StopMusic();
            SongManager.Instance.PlayMainSong();


            InitializeComponent();
            ChangeLanguageLabel();
        }

        public StartView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            SongManager.Instance.StopMusic();
            SongManager.Instance.PlayMainSong();


            InitializeComponent();
            ChangeLanguageLabel();
        }
        #endregion



        #region Methods for GUIs elements events
        private void StartGame(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));
        }

        private void ShowLanguages(object sender, MouseButtonEventArgs e)
        {
            LanguagePopUp.IsOpen = true;
        }

        private void CloseLanguages(object sender, MouseEventArgs e)
        {
            LanguagePopUp.IsOpen = false;
        }

        private void SetSpanishLanguage(object sender, RoutedEventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("es");

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new StartView(mainWindow));
        }

        private void SetEnglishLanguage(object sender, RoutedEventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en");

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new StartView(mainWindow));
        }
        #endregion



        #region Internationalization method
        private void ChangeLanguageLabel()
        {
            CultureInfo CurrentLanguage = CultureInfo.CurrentUICulture;

            if (CurrentLanguage.Name == "en")
            {
                LanguageLabel.Text = "English";
            }
            else
            {
                LanguageLabel.Text = "Español";
            }
        }
        #endregion



        private void PlayHoverSound(object sender, MouseEventArgs e)
        {
            SongManager.Instance.PlayHoverSound();

        }
    }
}
