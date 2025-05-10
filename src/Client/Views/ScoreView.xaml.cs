using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.ServiceProfileForNonCallbackMethodsReference;
using Client.Views.UserControls;


namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para ScoreView.xaml
    /// </summary>
    public partial class ScoreView : Page
    {
        private readonly MainWindow mainWindow;

        public ScoreView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();
            LowScore();
        }

        private void LowScore()
        {                      
            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            foreach (var profile in profileNonCallbackMethodsClient.GetAllProfilesAndItsScore())
            {
                ProfileScoreStackPanel.Children.Add(new UserControlScore(profile.Key, profile.Value));
            }            
        }

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new MenuView(mainWindow));
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
    }

    
}
