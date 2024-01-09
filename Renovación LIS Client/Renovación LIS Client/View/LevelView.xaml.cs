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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para LevelView.xaml
    /// </summary>
    public partial class LevelView : Page
    {
        private int SelectedLevel = 2;
        public LevelView()
        {
            InitializeComponent();
        }

        private void GoToNextLevel(object sender, MouseButtonEventArgs e)
        {
            if (NextButton == (Image)sender)
            {
                if (SelectedLevel == 8)
                {
                    SelectedLevel = 1;
                }
                else
                {
                    SelectedLevel++;
                }
            }
            else if(BeforeButton == (Image)sender)
            {
                if (SelectedLevel == 1)
                {
                    SelectedLevel = 8;
                }
                else
                {
                    SelectedLevel--;
                }
            }


            BitmapImage imageOne = new BitmapImage();
            string relativePathImage1 = "";

            BitmapImage imageTwo = new BitmapImage();
            string relativePathImage2 = "";

            BitmapImage imageThree = new BitmapImage();
            string relativePathImage3 = "";


            switch (SelectedLevel)
            {
                case 1:
                    relativePathImage1 = "../../images/LevelEightImage.png";
                    relativePathImage2 = "../../images/LevelOneImage.png";
                    relativePathImage3 = "../../images/LevelTwoImage.png";
                    break;
                case 2:
                    relativePathImage1 = "../../images/LevelOneImage.png";
                    relativePathImage2 = "../../images/LevelTwoImage.png";
                    relativePathImage3 = "../../images/LevelThreeImage.png";
                    break;
                case 3:
                    relativePathImage1 = "../../images/LevelTwoImage.png";
                    relativePathImage2 = "../../images/LevelThreeImage.png";
                    relativePathImage3 = "../../images/LevelFourImage.png";
                    break;
                case 4:
                    relativePathImage1 = "../../images/LevelThreeImage.png";
                    relativePathImage2 = "../../images/LevelFourImage.png";
                    relativePathImage3 = "../../images/LevelFiveImage.png";
                    break;
                case 5:
                    relativePathImage1 = "../../images/LevelFourImage.png";
                    relativePathImage2 = "../../images/LevelFiveImage.png";
                    relativePathImage3 = "../../images/LevelSixImage.png";
                    break;
                case 6:
                    relativePathImage1 = "../../images/LevelFiveImage.png";
                    relativePathImage2 = "../../images/LevelSixImage.png";
                    relativePathImage3 = "../../images/LevelSevenImage.png";
                    break;
                case 7:
                    relativePathImage1 = "../../images/LevelSixImage.png";
                    relativePathImage2 = "../../images/LevelSevenImage.png";
                    relativePathImage3 = "../../images/LevelEightImage.png";
                    break;
                case 8:
                    relativePathImage1 = "../../images/LevelSevenImage.png";
                    relativePathImage2 = "../../images/LevelEightImage.png";
                    relativePathImage3 = "../../images/LevelOneImage.png";
                    break;
            }

            imageOne = new BitmapImage(new Uri(System.IO.Path.Combine(Directory.GetCurrentDirectory(), relativePathImage1)));
            imageTwo = new BitmapImage(new Uri(System.IO.Path.Combine(Directory.GetCurrentDirectory(), relativePathImage2)));
            imageThree = new BitmapImage(new Uri(System.IO.Path.Combine(Directory.GetCurrentDirectory(), relativePathImage3)));

            levelOneImage.Source = imageOne;
            levelTwoImage.Source = imageTwo;
            levelThreeImage.Source = imageThree;

            ChangeLevelName();

        }

        private void FadeIn(Image image)
        {
            image.Opacity = 0;
            DoubleAnimation FadeIn = new DoubleAnimation
            {
                To = 1,
                Duration = TimeSpan.FromSeconds(1),
                AutoReverse = false,

            };

            image.BeginAnimation(Image.OpacityProperty, FadeIn);
        }

        private void PlayGameSelected(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelOneTwoView());
        }

        private void ChangeLevelName()
        {
            switch (SelectedLevel)
            {
                case 1:
                    BeforeLevel.Content = "AUDITORIO";
                    MainLevel.Content = "ECONEX";
                    NextLevel.Content = "FEI";
                    break;
                case 2:
                    BeforeLevel.Content = "ECONEX";
                    MainLevel.Content = "FEI";
                    NextLevel.Content = "TEATRO";
                    break;
                case 3:
                    BeforeLevel.Content = "FEI";
                    MainLevel.Content = "TEATRO";
                    NextLevel.Content = "ESTACIONAMIENTO";
                    break;
                case 4:
                    BeforeLevel.Content = "TEATRO";
                    MainLevel.Content = "ESTACIONAMIENTO";
                    NextLevel.Content = "ÁREA VERDE";
                    break;
                case 5:
                    BeforeLevel.Content = "ESTACIONAMIENTO";
                    MainLevel.Content = "ÁREA VERDE";
                    NextLevel.Content = "CANCHA";
                    break;
                case 6:
                    BeforeLevel.Content = "ÁREA VERDE";
                    MainLevel.Content = "CANCHA";
                    NextLevel.Content = "SECRETARIADO";
                    break;
                case 7:
                    BeforeLevel.Content = "CANCHA";
                    MainLevel.Content = "SECRETARIADO";
                    NextLevel.Content = "AUDITORIO";
                    break;
                case 8:
                    BeforeLevel.Content = "SECRETARIADO";
                    MainLevel.Content = "AUDITORIO";
                    NextLevel.Content = "ECONEX";
                    break;
            }
        }
            

    }

}
