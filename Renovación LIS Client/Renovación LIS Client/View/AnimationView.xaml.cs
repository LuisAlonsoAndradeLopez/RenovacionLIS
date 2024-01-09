using Renovación_LIS_Client.Helpers;
using System;
using System.Collections.Generic;
using System.IO;
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
    /// Lógica de interacción para AnimationView.xaml
    /// </summary>
    public partial class AnimationView : Page
    {
        public AnimationView()
        {
            InitializeComponent();
            SongManager.Instance.PauseMusic();

            string path = System.IO.Path.Combine(Directory.GetCurrentDirectory(), "../../Videos/AnimationVideo.mp4");
            AnimationVideo.Source = new Uri(path);

            AnimationVideo.MediaEnded += (sender, e) =>
            {
                SongManager.Instance.ResumeMusic();

                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LevelView());
            };
        }

        private void SkipButton(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            SongManager.Instance.ResumeMusic();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelView());

        }

        private void PlayHoverSound(object sender, MouseEventArgs e)
        {
            SongManager.Instance.PlayHoverSound();

        }


    }
}
