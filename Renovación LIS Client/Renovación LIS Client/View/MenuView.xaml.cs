using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using domain;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceMultiplayerGameReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MenuView.xaml
    /// </summary>
    public partial class MenuView : Page
    {
        private MainWindow mainWindow;
        private Profile loggedProfile = new Profile();
        private ProfileForCallbackMethodsClient profileForCallbackMethodsClient;

        public MenuView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient)
        {
            PageStateManager.CurrentPage = this;

            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            WelcomeBackLabel.Content = WelcomeBackLabel.Content + loggedProfile.Player.NickName + "!";
        }

        public MenuView() { }

        private void FriendsButtonOnClick(object sender, RoutedEventArgs e)
        {            
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new FriendsView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
        }

        private void PlayButtonOnClick(object sender, RoutedEventArgs e)
        {
            MultiplayerGameClient multiplayerGameClient = new MultiplayerGameClient(new InstanceContext(new LobbyView(mainWindow, loggedProfile, profileForCallbackMethodsClient)));
            if (!multiplayerGameClient.ThePlayersAreInGame())
            {
                if (!multiplayerGameClient.IsBanned(loggedProfile.Player.NickName))
                {
                    if (multiplayerGameClient.GetConnectedProfiles().Length < 4)
                    {
                        ChatClient chatClient = new ChatClient(new InstanceContext(new LobbyView()));
                        chatClient.JoinChat(loggedProfile.Player.NickName);
                       
                        multiplayerGameClient.Connect(loggedProfile.Player.NickName);
                        NavigationService navigationService = NavigationService.GetNavigationService(this);
                        navigationService.Navigate(new LobbyView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The lobby is full!!!");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "You are banned!!!!!");
                }
            }
            else
            {
                new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The game already has started!");
            }
        }

        private void ProfileButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ModifyProfileView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
        }

        private void QuitButtonOnClick(object sender, RoutedEventArgs e)
        {
            ProfileClient profileClient = new ProfileClient();
            profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            mainWindow.SetNullToLoggedProfile();

            profileForCallbackMethodsClient.Disconnect(loggedProfile.Player.NickName);

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));

            profileClient.Close();
        }


        public void GoToLobbyView()
        {
            mainWindow.OpenTheLobbyView(this);
        }
    }
}
