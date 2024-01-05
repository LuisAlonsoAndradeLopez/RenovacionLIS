using System;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;
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
        
        private readonly int thisPageIsOpenedByTheAdmin;

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

            var animation = new DoubleAnimation
            {
                From = 1,
                To = 0,
                Duration = TimeSpan.FromSeconds(0.5),
                FillBehavior = FillBehavior.HoldEnd
            };

            BlackScreenRectangle.BeginAnimation(Rectangle.OpacityProperty, animation);
            BlackScreenRectangle.Visibility = Visibility.Collapsed;

            if (openedByTheAdmin)
            {
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartTheCrosswordSelectionAlgorythm();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.ShowTheSelectedCrosswordBorderToConnectedClients();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.OpenTheMultiplayerCrosswordViewToConnectedClients();
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
                currentPage.UpdateCountdown();
            }
        }

        public void UpdateCrossword()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateCrosswordCompletition();
            }
        }

        public void UpdateProfilesPoints()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateProfilesPointsList();
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
            if (PageStateManager.CurrentPage is RandomMultiplayerCrosswordGeneratorView currentPage)
            {
                switch (RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.)
                {
                    case 0:

                        //TODO: En el servicio crear metodo para recojer crosswordNumberSelected y en este switch
                        //ponerle basura para mostrar la imagen del crucigrama y su texto
                        
                }
                currentPage.SelectedCrosswordName
                current

                var animation = new DoubleAnimation
                {
                    From = 0,
                    To = 1,
                    Duration = TimeSpan.FromSeconds(0.5),
                    FillBehavior = FillBehavior.HoldEnd
                };

                currentPage.SelectedCrosswordBorder.BeginAnimation(Border.OpacityProperty, animation);
            }
        }
        #endregion
    }
}
