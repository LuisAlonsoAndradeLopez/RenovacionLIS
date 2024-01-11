using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
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
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        public static MultiplayerCrosswordCallbackMethodsClient multiplayerCrosswordCallbackMethodsClient;
        #endregion



        #region Constructors
        public RandomMultiplayerCrosswordGeneratorView()
        {
            multiplayerCrosswordCallbackMethodsClient = new MultiplayerCrosswordCallbackMethodsClient(new InstanceContext(this));
        }

        public RandomMultiplayerCrosswordGeneratorView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;
            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            InitializeComponent();

            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();

            if (MainWindow.loggedProfile.Player.NickName == multiplayerCrosswordNonCallbackMethodsClient.GetAdmin())
            {
                multiplayerCrosswordNonCallbackMethodsClient.SetTheCrosswordIsNotComplete();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartTheCrosswordSelectionAlgorythm();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.ShowTheSelectedCrosswordBorderToConnectedClients();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.OpenTheMultiplayerCrosswordViewToConnectedClients();
            }
        }
        #endregion



        #region Auxiliary methods
        public void ExpeltPlayerToLobbyViewForBeingAlone()
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LobbyView(mainWindow));

            new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Uh oh!", "You have been expelt from the game for being the unique player in the game!");
        }

        public void GoToMultiplayerCrosswordView()
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MultiplayerCrosswordView(mainWindow));
        }

        public void SetVisibleToTheSelectedCrosswordBorder()
        {
            SelectedCrosswordBorder.Visibility = Visibility.Visible;
            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            switch (multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordNumberSelected())
            {
                case 1:
                    SelectedCrosswordName.Text = "105";
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\105MultiplayerCrosswordSelectionImage.jpeg");
                    break;

                case 2:
                    SelectedCrosswordName.Text = "CC3";
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\CC3MultiplayerCrosswordSelectionImage.jpeg");
                    break;

                case 3:
                    SelectedCrosswordName.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo);
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\bañoMultiplayerCrosswordSelectionImage.jpeg");
                    break;

                case 4:
                    SelectedCrosswordName.Text = resourceManager.GetString("Doctorated in CS", cultureInfo);
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\doctoradoEnCienciasDeLaComputaciónMultiplayerCrosswordSelectionImage.jpeg");
                    break;

                case 5:
                    SelectedCrosswordName.Text = resourceManager.GetString("Crystal saloon", cultureInfo);
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\salónCristalMultiplayerCrosswordSelectionImage.jpeg");
                    break;

            }
        }
        #endregion



        #region Callback methods
        public void ExpeltProfileToTheLobbyViewForBeingAlone()
        {
            if (PageStateManager.CurrentPage is RandomMultiplayerCrosswordGeneratorView randomMultiplayerCrosswordGeneratorView)
            {
                randomMultiplayerCrosswordGeneratorView.ExpeltPlayerToLobbyViewForBeingAlone();
            }
            else if (PageStateManager.CurrentPage is MultiplayerCrosswordView multiplayerCrosswordView)
            {
                multiplayerCrosswordView.ExpeltPlayerToLobbyViewForBeingAlone();
            }
        }

        public void UpdateCrossword()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateCrosswordCompletition();
            }
        }
        public void UpdateGameCountdown(int seconds)
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateGameCountdown(seconds);
            }
        }

        public void UpdateGlobalCountdown(int seconds)
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateGlobalCountdown(seconds);
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
                configurationView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
        }

        public void OpenMultiplayerCrosswordView()
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
                currentPage.SetVisibleToTheSelectedCrosswordBorder();
            }
        }

        public void ShowBlackScreenAnimationOnLobbyViewOrItsChildPages()
        {
            if (PageStateManager.CurrentPage is LobbyView lobbyView)
            {
                lobbyView.StartBlackScreenAnimation();
            }
            else if (PageStateManager.CurrentPage is BannedPlayersView bannedPlayersView)
            {
                bannedPlayersView.StartBlackScreenAnimation();
            }
            else if (PageStateManager.CurrentPage is FriendsView friendsView)
            {
                friendsView.StartBlackScreenAnimation();
            }
            else if (PageStateManager.CurrentPage is ChatView chatView)
            {
                chatView.StartBlackScreenAnimation();
            }
            else if (PageStateManager.CurrentPage is ConfigurationView configurationView)
            {
                configurationView.StartBlackScreenAnimation();
            }
        }

        public void ShowGoText()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateGoText();
            }
        }

        public void ShowTheSelectedCrosswordAndItsQustions()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.ShowTheSelectCrosswordAndItsQuestions();
            }
        }

        public void ShowTimesUpText()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateTimesUpText();
            }
        }

        public void OpenLobbyView()
        {
            if (PageStateManager.CurrentPage is WinnersView currentPage)
            {
                currentPage.ShowLobbyView();
            }
        }

        public void OpenRandomMultiplayerCrosswordGeneratorView()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.OpenRandomMultiplayerCrosswordGeneratorView();
            }
        }

        public void OpenWinnersView()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.OpenWinnersView();
            }
        }
        #endregion
    }
}
