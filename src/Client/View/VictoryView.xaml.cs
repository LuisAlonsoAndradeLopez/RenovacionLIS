using System.ServiceModel;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.Helpers;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para VictoryView.xaml
    /// </summary>
    public partial class VictoryView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly int level;
        #endregion



        #region Constructors
        public VictoryView(MainWindow mainWindow, int level)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();

            this.level = level; 

            Txt_CurrentLevel.Text = level.ToString();
            Txt_NextLevel.Text = (level + 1).ToString();
        }
        #endregion



        #region Methods for GUIs elements
        private void GoToNextLevel(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelOneTwoView(mainWindow, level + 1));

            SongManager.Instance.PlayClickSound();
        }

        private void ReturnToMenu(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LevelView(mainWindow));

                SongManager.Instance.PlayClickSound();
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
        #endregion
    }
}
