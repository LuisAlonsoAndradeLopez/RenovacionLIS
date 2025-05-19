using Client.AuxiliaryClasses;
using Client.Helpers;
using System;
using System.IO;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para AnimationView.xaml
    /// </summary>
    public partial class AnimationView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        #endregion



        #region Constructors
        public AnimationView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();
            SongManager.Instance.PauseMusic();

            string path = Path.Combine(Directory.GetCurrentDirectory(), "../../Videos/AnimationVideo.mp4");
            AnimationVideo.Source = new Uri(path);

            AnimationVideo.MediaEnded += (sender, e) =>
            {
                try
                {
                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                    navigationService.Navigate(new LevelView(mainWindow));

                    SongManager.Instance.ResumeMusic();
                    SongManager.Instance.PlaySingleplayerSong();
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
            };
        }
        #endregion



        #region Methods for GUIs elements
        private void SkipButton(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LevelView(mainWindow));

                SongManager.Instance.PlayClickSound();

                SongManager.Instance.ResumeMusic();
                SongManager.Instance.PlaySingleplayerSong();
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

        private void PlayHoverSound(object sender, MouseEventArgs e)
        {
            SongManager.Instance.PlayHoverSound();
        }
        #endregion
    }
}
