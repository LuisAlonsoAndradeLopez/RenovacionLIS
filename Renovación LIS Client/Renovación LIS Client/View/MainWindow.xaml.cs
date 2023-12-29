using domain;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceMultiplayerGameReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileReference;
using Renovación_LIS_Client.View;
using System;
using System.Dynamic;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using System.Windows.Threading;

namespace Renovación_LIS_Client
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>

    public partial class MainWindow : Window, IProfileForCallbackMethodsCallback
    {
        private Profile loggedProfile = null;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        public MainWindow()
        {
            InitializeComponent();
            
            Application.Current.DispatcherUnhandledException += DispatcherUnhandledException;
            Application.Current.Exit += AppExit;
            AppDomain.CurrentDomain.ProcessExit += ProcessExit;
            this.Closing += MainWindowClosing;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            NavigationService navigationService = MainFrame.NavigationService;
            navigationService.Navigate(new StartView(this));

        }

        private void AppExit(object sender, EventArgs e)
        {
            if (loggedProfile != null)
            {
                ProfileClient profileClient = new ProfileClient();
                profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
                
                profileClient.Close();
            }
        }

        private void ProcessExit(object sender, EventArgs e)
        {
            if (loggedProfile != null)
            {
                ProfileClient profileClient = new ProfileClient();
                profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            
                profileClient.Close();
            }
        }

        private void DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
        {
            if (loggedProfile != null)
            {
                ProfileClient profileClient = new ProfileClient();
                profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            
                profileClient.Close();
            }

        }

        private void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            //if (Debugger.IsAttached)
            //{
                

                if (new AlertPopUpGenerator().OpenDesicionPopUp("What do you want", "Do you want to exit"))
                {
                    if(loggedProfile != null)
                    {
                        ProfileClient profileClient = new ProfileClient();
                        profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);

                        profileClient.Close();
                    }
                }
                else
                {
                    e.Cancel = true;
                }

            //}
        }

        public void SetNullToLoggedProfile()
        {
            this.loggedProfile = null;
        }

        public void SetProfileToLoggedProfile(Profile profile)
        {
            this.loggedProfile = new Profile();
            this.loggedProfile = profile;
        }


        //Auxiliary methods
        public void OpenTheLobbyView(Page page)
        {
            if (new AlertPopUpGenerator().OpenDesicionPopUp("You have been invitated to the lobby!", "Do you want to enter to the lobby?"))
            {
                MultiplayerGameClient multiplayerGameClient = new MultiplayerGameClient(new InstanceContext(new LobbyView(this, loggedProfile, new ProfileForCallbackMethodsClient(new InstanceContext(this)))));
                if (!multiplayerGameClient.ThePlayersAreInGame())
                {
                    if (!multiplayerGameClient.IsBanned(loggedProfile.Player.NickName))
                    {
                        if (multiplayerGameClient.GetConnectedProfiles().Length < 4)
                        {
                            ChatClient chatClient = new ChatClient(new InstanceContext(new LobbyView()));
                            chatClient.JoinChat(loggedProfile.Player.NickName);

                            multiplayerGameClient.Connect(loggedProfile.Player.NickName);
                            NavigationService navigationService = NavigationService.GetNavigationService(page);
                            navigationService.Navigate(new LobbyView(this, loggedProfile, new ProfileForCallbackMethodsClient(new InstanceContext(this))));
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
        }


        //Callback Method         
        public void UpdateFriendsLists()
        {
            if (PageStateManager.CurrentPage is FriendsView currentPage)
            {
                currentPage.ShowUpdatedFriendsList();
            }            
        }

        public void UpdateFriendsForInviteLists()
        {
            if (PageStateManager.CurrentPage is FriendsView currentPage)
            {
                currentPage.ShowConnectedFriendsListForInviteToLobby();
            }
        }

        public void OpenPaneForEnterTheLobby()
        {
            if (PageStateManager.CurrentPage is MenuView menuView)
            {
                menuView.GoToLobbyView();
            }
            else if (PageStateManager.CurrentPage is ModifyProfileView modifyProfileView)
            {
                modifyProfileView.GoToLobbyView();
            }
            else if (PageStateManager.CurrentPage is FriendsView friendsView)
            {
                friendsView.GoToLobbyView();
            }
            else if (PageStateManager.CurrentPage is ConfigurationView configurationView)
            {
                //configurationView;
            }
        }
    }

    public class PageStateManager
    {
        public static Page CurrentPage { get; set; }
    }
}
