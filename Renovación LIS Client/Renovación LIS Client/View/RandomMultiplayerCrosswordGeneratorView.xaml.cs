using System;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows.Controls;
using System.Windows.Navigation;
using domain;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForCallbackMethodsReference;

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
        
        private readonly int crosswordNumberSelected;
        private readonly int crosswordsPlayed;

        public static MultiplayerCrosswordCallbackMethodsClient multiplayerCrosswordCallbackMethodsClient;

        public RandomMultiplayerCrosswordGeneratorView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;
            this.mainWindow = mainWindow;
            
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            multiplayerCrosswordCallbackMethodsClient = new MultiplayerCrosswordCallbackMethodsClient(new InstanceContext(this));

            crosswordsPlayed = 0;

            InitializeComponent();
            
            while (true)
            {
                crosswordNumberSelected = new Random().Next(1, 6);
                //Show the level image with this number
                if (new Random().Next(0, 2) == 1)
                {
                    break;
                }
            }
            
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MultiplayerCrosswordView(mainWindow, crosswordNumberSelected, crosswordsPlayed));
        }

        public RandomMultiplayerCrosswordGeneratorView(MainWindow mainWindow, int crosswordNumberSelected, int crosswordPlayed)
        {
            //PageStateManager.CurrentPage = this;
            //
            //this.mainWindow = mainWindow;
            //this.MainWindow.loggedProfile = MainWindow.loggedProfile;
            //this.crosswordNumberSelected = crosswordNumberSelected;
            //this.crosswordPlayed = crosswordPlayed;
            //
            //cultureInfo = CultureInfo.CurrentUICulture;
            //resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            //
            //InitializeComponent();
            //
            //while (true)
            //{
            //    crosswordNumberSelected = new Random().Next(1, 21);
            //    //Show the level image with this number
            //    if (new Random().Next(0, 2) == 1)
            //    {
            //        break;
            //    }
            //}
            //
            //NavigationService navigationService = NavigationService.GetNavigationService(this);
            //navigationService.Navigate(new MultiplayerCrosswordView(mainWindow, MainWindow.loggedProfile, crosswordNumberSelected, crosswordPlayed));
        }

        public void UpdateCountdown(int seconds)
        {
            throw new NotImplementedException();
        }

        public void UpdateCrossword()
        {
            throw new NotImplementedException();
        }

        public void UpdateProfilesPoints()
        {
            throw new NotImplementedException();
        }

        public void OpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage()
        {
            if (PageStateManager.CurrentPage is LobbyView lobbyView)
            {
                lobbyView.GoToRandomMultiplayerCrosswordGeneratorView();
            }
            else if (PageStateManager.CurrentPage is BannedPlayersView bannedPlayersView)
            {
                bannedPlayersView.GoToRandomMultiplayerCrosswordGeneratorView();
            }
            else if (PageStateManager.CurrentPage is FriendsView friendsView)
            {
                friendsView.GoToRandomMultiplayerCrosswordGeneratorView();
            }
            else if (PageStateManager.CurrentPage is ChatView chatView)
            {
                chatView.GoToRandomMultiplayerCrosswordGeneratorView();
            }
            else if (PageStateManager.CurrentPage is ConfigurationView configurationView)
            {
                //configurationView.GoToRandomMultiplayerCrosswordGeneratorView();
            }
        }
    }
}
