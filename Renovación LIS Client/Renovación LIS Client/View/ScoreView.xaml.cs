using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;
using Renovación_LIS_Client.View.UserControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
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
