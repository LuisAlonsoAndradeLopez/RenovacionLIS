using Renovación_LIS_Client.Helpers;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Media;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;
using Path = System.IO.Path;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para StartView.xaml
    /// </summary>
    public partial class StartView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        #endregion

        #region Constructor
        public StartView(MainWindow mainWindow)
        {
            string incompletePath = Path.GetFullPath("resources\\songs\\Apprentice (Instrumental) - Friday Night Funkin vs Dave and Bambi Golden Apple OST.wav");
            string pathPartToDelete = "Renovación LIS Client\\Renovación LIS Client\\bin\\Debug\\";
            string completePath = incompletePath.Replace(pathPartToDelete, "");
            SoundPlayer mainMenuSong = new SoundPlayer(completePath);
            mainMenuSong.Play();

            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

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
