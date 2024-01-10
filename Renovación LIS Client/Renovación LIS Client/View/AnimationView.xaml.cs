using Renovación_LIS_Client.Helpers;
using System;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para AnimationView.xaml
    /// </summary>
    public partial class AnimationView : Page
    {
        private readonly MainWindow mainWindow;

        public AnimationView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();
            SongManager.Instance.PauseMusic();

            string path = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../../Videos/AnimationVideo.mp4");
            AnimationVideo.Source = new Uri(path);

            AnimationVideo.MediaEnded += (sender, e) =>
            {
                SongManager.Instance.ResumeMusic();
                SongManager.Instance.PlaySingleplayerSong();

                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LevelView(mainWindow));
            };
        }

        private void SkipButton(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            SongManager.Instance.ResumeMusic();
            SongManager.Instance.PlaySingleplayerSong();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelView(mainWindow));

        }

        private void PlayHoverSound(object sender, MouseEventArgs e)
        {
            SongManager.Instance.PlayHoverSound();

        }


    }
}
