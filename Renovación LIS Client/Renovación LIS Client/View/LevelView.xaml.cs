﻿using System;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.Helpers;

namespace Renovación_LIS_Client.View
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
            SongManager.Instance.ResumeMusic();
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
        }
        #endregion
    }
}
