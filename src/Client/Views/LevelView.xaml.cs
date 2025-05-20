using System;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.Helpers;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para LevelView.xaml
    /// </summary>
    public partial class LevelView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private int SelectedLevel = 2;
        #endregion



        #region Constructors
        public LevelView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();

            ChangeLevelImage();
            ChangeLevelName();
            
            ProfileImage.Source = new ImageLoader().GetImageByPlayerNickname(MainWindow.loggedProfile.Player.NickName);
            ProfileNickname.Content = MainWindow.loggedProfile.Player.NickName;
        }
        #endregion



        #region Methods for GUIs elements
        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            SongManager.Instance.StopMusic();
            SongManager.Instance.PlayMainSong();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new GamemodeSelectionView(mainWindow));
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

            ChangeLevelImage(); 
            ChangeLevelName();
        }

        private void PlayGameSelected(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelOneTwoView(mainWindow, SelectedLevel));
        }
        #endregion



        #region Auxiliary methods
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

        private void ChangeLevelImage()
        {
            BitmapImage imageOne = new BitmapImage();
            string relativePathImage1 = "";

            BitmapImage imageTwo = new BitmapImage();
            string relativePathImage2 = "";

            BitmapImage imageThree = new BitmapImage();
            string relativePathImage3 = "";


            switch (SelectedLevel)
            {
                case 1:
                    relativePathImage1 = "../../Resources/Images/LevelEightImage.png";
                    relativePathImage2 = "../../Resources/Images/LevelOneImage.png";
                    relativePathImage3 = "../../Resources/Images/LevelTwoImage.png";
                    break;
                case 2:
                    relativePathImage1 = "../../Resources/Images/LevelOneImage.png";
                    relativePathImage2 = "../../Resources/Images/LevelTwoImage.png";
                    relativePathImage3 = "../../Resources/Images/LevelThreeImage.png";
                    break;
                case 3:
                    relativePathImage1 = "../../Resources/Images/LevelTwoImage.png";
                    relativePathImage2 = "../../Resources/Images/LevelThreeImage.png";
                    relativePathImage3 = "../../Resources/Images/LevelFourImage.png";
                    break;
                case 4:
                    relativePathImage1 = "../../Resources/Images/LevelThreeImage.png";
                    relativePathImage2 = "../../Resources/Images/LevelFourImage.png";
                    relativePathImage3 = "../../Resources/Images/LevelFiveImage.png";
                    break;
                case 5:
                    relativePathImage1 = "../../Resources/Images/LevelFourImage.png";
                    relativePathImage2 = "../../Resources/Images/LevelFiveImage.png";
                    relativePathImage3 = "../../Resources/Images/LevelSixImage.png";
                    break;
                case 6:
                    relativePathImage1 = "../../Resources/Images/LevelFiveImage.png";
                    relativePathImage2 = "../../Resources/Images/LevelSixImage.png";
                    relativePathImage3 = "../../Resources/Images/LevelSevenImage.png";
                    break;
                case 7:
                    relativePathImage1 = "../../Resources/Images/LevelSixImage.png";
                    relativePathImage2 = "../../Resources/Images/LevelSevenImage.png";
                    relativePathImage3 = "../../Resources/Images/LevelEightImage.png";
                    break;
                case 8:
                    relativePathImage1 = "../../Resources/Images/LevelSevenImage.png";
                    relativePathImage2 = "../../Resources/Images/LevelEightImage.png";
                    relativePathImage3 = "../../Resources/Images/LevelOneImage.png";
                    break;
            }

            imageOne = new BitmapImage(new Uri(System.IO.Path.Combine(Directory.GetCurrentDirectory(), relativePathImage1)));
            imageTwo = new BitmapImage(new Uri(System.IO.Path.Combine(Directory.GetCurrentDirectory(), relativePathImage2)));
            imageThree = new BitmapImage(new Uri(System.IO.Path.Combine(Directory.GetCurrentDirectory(), relativePathImage3)));

            levelOneImage.Source = imageOne;
            levelTwoImage.Source = imageTwo;
            levelThreeImage.Source = imageThree;
        }
        #endregion
    }
}
