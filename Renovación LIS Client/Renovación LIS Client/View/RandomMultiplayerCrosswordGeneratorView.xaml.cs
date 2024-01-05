using System;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;
using domain;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para RandomMultiplayerCrosswordGeneratorView.xaml
    /// </summary>
    public partial class RandomMultiplayerCrosswordGeneratorView : Page, IMultiplayerCrosswordCallbackMethodsCallback
    {
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        

        public static MultiplayerCrosswordCallbackMethodsClient multiplayerCrosswordCallbackMethodsClient;

        public RandomMultiplayerCrosswordGeneratorView() 
        {
            multiplayerCrosswordCallbackMethodsClient = new MultiplayerCrosswordCallbackMethodsClient(new InstanceContext(this));
        }

        public RandomMultiplayerCrosswordGeneratorView(MainWindow mainWindow, bool openedByTheAdmin)
        {
            PageStateManager.CurrentPage = this;
            this.mainWindow = mainWindow;
            
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            InitializeComponent();

            Thread.Sleep(1000);

            if (openedByTheAdmin)
            {
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartTheCrosswordSelectionAlgorythm();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.ShowTheSelectedCrosswordBorderToConnectedClients();
                //RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.OpenTheMultiplayerCrosswordViewToConnectedClients();
            }
        }


        public void GoToMultiplayerCrosswordView()
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MultiplayerCrosswordView(mainWindow));
        }


        #region Callback methods
        public void UpdateCountdown(int seconds)
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                //currentPage.UpdateCountdown();
            }
        }

        public void UpdateCrossword()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                //currentPage.UpdateCrosswordCompletition();
            }
        }

        public void UpdateProfilesPoints()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                //currentPage.UpdateProfilesPointsList();
            }
        }

        public void OpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage()
        {
            if (PageStateManager.CurrentPage is LobbyView lobbyView)
            {
                lobbyView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
            else if (PageStateManager.CurrentPage is BannedPlayersView bannedPlayersView)
            {
                bannedPlayersView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
            else if (PageStateManager.CurrentPage is FriendsView friendsView)
            {
                friendsView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
            else if (PageStateManager.CurrentPage is ChatView chatView)
            {
                chatView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
            else if (PageStateManager.CurrentPage is ConfigurationView configurationView)
            {
                //configurationView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
        }
        
        public void OpenMultiplayerCrosswordView(int crosswordNumberSelected)
        {
            if (PageStateManager.CurrentPage is RandomMultiplayerCrosswordGeneratorView currentPage)
            {
                currentPage.GoToMultiplayerCrosswordView();
            }
        }

        public void ShowTheSelectedCrosswordBorder()
        {
            //No internacionaliza
            //Pasar la imagen del salon cristal
            //verificar las pantallas que acedan bien al randommultiplayercrosswordselectorview

            if (PageStateManager.CurrentPage is RandomMultiplayerCrosswordGeneratorView currentPage)
            {
                currentPage.SelectedCrosswordBorder.Visibility = Visibility.Visible;
                MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
                switch (multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordNumberSelected())
                {
                    case 1:
                        currentPage.SelectedCrosswordName.Text = "105";
                        currentPage.SelectedCrosswordImage.Source = new ImageLoader().GetImageByGetImageByRenovaciónLISStoragedImagePathPath("images\\105MultiplayerCrosswordSelectionImage.jpeg");
                        break;

                    case 2:
                        currentPage.SelectedCrosswordName.Text = "CC3";
                        currentPage.SelectedCrosswordImage.Source = new ImageLoader().GetImageByGetImageByRenovaciónLISStoragedImagePathPath("images\\CC3MultiplayerCrosswordSelectionImage.jpeg");
                        break;

                    case 3:
                        currentPage.SelectedCrosswordName.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo);
                        currentPage.SelectedCrosswordImage.Source = new ImageLoader().GetImageByGetImageByRenovaciónLISStoragedImagePathPath("images\\bañoMultiplayerCrosswordSelectionImage.jpeg");
                        break;

                    case 4:
                        currentPage.SelectedCrosswordName.Text = resourceManager.GetString("Doctorated in CS", cultureInfo);
                        currentPage.SelectedCrosswordImage.Source = new ImageLoader().GetImageByGetImageByRenovaciónLISStoragedImagePathPath("images\\doctoradoEnCienciasDeLaComputaciónMultiplayerCrosswordImage.jpeg");
                        break;

                    case 5:
                        currentPage.SelectedCrosswordName.Text = resourceManager.GetString("Crystal saloon", cultureInfo);
                        currentPage.SelectedCrosswordImage.Source = new ImageLoader().GetImageByGetImageByRenovaciónLISStoragedImagePathPath("images\\105MultiplayerCrosswordSelectionImage.jpeg");
                        break;

                }

                Thread.Sleep(3000);
            }
        }
        #endregion
    }
}
