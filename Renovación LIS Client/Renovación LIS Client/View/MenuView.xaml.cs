using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceLobbyForNonCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MenuView.xaml
    /// </summary>
    public partial class MenuView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        #endregion

        #region Constructors
        public MenuView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();
            WelcomeBackLabel.Content = WelcomeBackLabel.Content + MainWindow.loggedProfile.Player.NickName + "!";
        }
        #endregion



        #region Methods for GUIs elements events
        private void FriendsButtonOnClick(object sender, RoutedEventArgs e)
        {            
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new FriendsView(mainWindow));
        }

        private void PlayButtonOnClick(object sender, RoutedEventArgs e)
        {
            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            if (!lobbyNonCallbackMethodsClient.ThePlayersAreInGame())
            {
                if (!lobbyNonCallbackMethodsClient.IsBanned(MainWindow.loggedProfile.Player.NickName))
                {
                    if (lobbyNonCallbackMethodsClient.GetConnectedProfiles().Length < 4)
                    {
                        LobbyView lobbyView = new LobbyView(mainWindow);
                        LobbyView.chatCallbackMethodsClient.JoinChat(MainWindow.loggedProfile.Player.NickName);
                        LobbyView.lobbyCallbackMethodsClient.Connect(MainWindow.loggedProfile.Player.NickName);

                        new RandomMultiplayerCrosswordGeneratorView();
                        RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.Connect(MainWindow.loggedProfile.Player.NickName);
                        NavigationService navigationService = NavigationService.GetNavigationService(this);
                        navigationService.Navigate(lobbyView);
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The lobby is full!!!");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "You are banned!!!!!");
                }
            }
            else
            {
                new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The game already has started!");
            }

            lobbyNonCallbackMethodsClient.Close();
        }

        private void ProfileButtonOnClick(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.PlayClickSound();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ModifyProfileView(mainWindow));
        }

        private void QuitButtonOnClick(object sender, RoutedEventArgs e)
        {
            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, MainWindow.loggedProfile.IDProfile);

            MainWindow.profileCallbackMethodsClient.Disconnect(MainWindow.loggedProfile.Player.NickName);

            mainWindow.SetNullTologgedProfile();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));

            profileNonCallbackMethodsClient.Close();
        }
        #endregion



        #region Auxiliary methods
        public void GoToLobbyView()
        {
            mainWindow.OpenTheLobbyView(this);
        }
        #endregion
    }
}
