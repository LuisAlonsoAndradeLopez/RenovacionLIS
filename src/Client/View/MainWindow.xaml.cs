using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using System.Windows.Threading;
using domain;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceLobbyForNonCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;
using Renovación_LIS_Client.View;

namespace Renovación_LIS_Client
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>

    public partial class MainWindow : Window, IProfileCallbackMethodsCallback
    {
        #region Atributes
        public static Profile loggedProfile;
        public static ProfileCallbackMethodsClient profileCallbackMethodsClient;
        #endregion



        #region Constructor
        public MainWindow()
        {
            loggedProfile = null;
            //Application.Current.DispatcherUnhandledException += DispatcherUnhandledException;
            Application.Current.Exit += AppExit;
            AppDomain.CurrentDomain.ProcessExit += ProcessExit;
            this.Closing += MainWindowClosing;

            profileCallbackMethodsClient = new ProfileCallbackMethodsClient(new InstanceContext(this));
            profileCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            InitializeComponent();

            NavigationService navigationService = MainFrame.NavigationService;
            navigationService.Navigate(new StartView(this));
        }

        //Method for use in the tests
        public MainWindow(string x) { }
        #endregion



        #region Renovación LIS app exit methods
        private void AppExit(object sender, EventArgs e)
        {
            if (MainWindow.loggedProfile != null)
            {
                if (profileCallbackMethodsClient.State != CommunicationState.Faulted)
                {
                    ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
                    profileNonCallbackMethodsClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, MainWindow.loggedProfile.IDProfile);
                    MainWindow.profileCallbackMethodsClient.Disconnect(MainWindow.loggedProfile.Player.NickName);

                    profileNonCallbackMethodsClient.Close();
                }
            }
        }

        private void ProcessExit(object sender, EventArgs e)
        {
            if (MainWindow.loggedProfile != null)
            {
                if (profileCallbackMethodsClient.State != CommunicationState.Faulted)
                {
                    ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
                    profileNonCallbackMethodsClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, MainWindow.loggedProfile.IDProfile);
                    MainWindow.profileCallbackMethodsClient.Disconnect(MainWindow.loggedProfile.Player.NickName);

                    profileNonCallbackMethodsClient.Close();
                }
            }
        }

        //private void DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
        //{
        //    if (MainWindow.loggedProfile != null)
        //    {
        //        if (profileCallbackMethodsClient.State != CommunicationState.Faulted)
        //        {
        //            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
        //            profileNonCallbackMethodsClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, MainWindow.loggedProfile.IDProfile);
        //            MainWindow.profileCallbackMethodsClient.Disconnect(MainWindow.loggedProfile.Player.NickName);
        //
        //            profileNonCallbackMethodsClient.Close();
        //        }
        //    }
        //
        //}

        private void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("What do you want", "Do you want to exit"))
            {
                if (MainWindow.loggedProfile != null)
                {
                    if (profileCallbackMethodsClient.State != CommunicationState.Faulted)
                    {
                        ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
                        profileNonCallbackMethodsClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, MainWindow.loggedProfile.IDProfile);
                        MainWindow.profileCallbackMethodsClient.Disconnect(MainWindow.loggedProfile.Player.NickName);

                        profileNonCallbackMethodsClient.Close();
                    }
                }
            }
            else
            {
                e.Cancel = true;
            }
        }
        #endregion



        #region Auxiliary methods
        public void RestartProfileCallbackMethodsClient()
        {
            if (MainWindow.profileCallbackMethodsClient.State == CommunicationState.Faulted)
            {
                MainWindow.profileCallbackMethodsClient = new ProfileCallbackMethodsClient(new InstanceContext(this));
            }
        }

        public void SetNullTologgedProfile()
        {
            MainWindow.loggedProfile = null;
        }

        public void SetProfileTologgedProfile(Profile profile)
        {
            MainWindow.loggedProfile = new Profile();
            MainWindow.loggedProfile = profile;
        }

        public void OpenTheLobbyView(Page page)
        {
            if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("You have been invitated to the lobby!", "Do you want to enter to the lobby?"))
            {
                LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
                if (!lobbyNonCallbackMethodsClient.ThePlayersAreInGame())
                {
                    if (!lobbyNonCallbackMethodsClient.IsBanned(MainWindow.loggedProfile.Player.NickName))
                    {
                        if (lobbyNonCallbackMethodsClient.GetConnectedProfiles().Length < 4)
                        {
                            LobbyView lobbyView = new LobbyView(this);
                            LobbyView.chatCallbackMethodsClient.JoinChat(MainWindow.loggedProfile.Player.NickName);
                            LobbyView.lobbyCallbackMethodsClient.Connect(MainWindow.loggedProfile.Player.NickName);
                            NavigationService navigationService = NavigationService.GetNavigationService(page);
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
            }
        }
        #endregion



        #region Callback Methods    
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
                configurationView.GoToLobbyView();
            }
        }
        #endregion
    }

    public class PageStateManager
    {
        public static Page CurrentPage { get; set; }
    }
}
