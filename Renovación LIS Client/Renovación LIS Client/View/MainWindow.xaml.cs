using domain;
using DomainStatuses;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceFriendRequestForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceFriendRequestReference;
using Renovación_LIS_Client.ServiceLivePlayerReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileReference;
using Renovación_LIS_Client.View;
using System;
using System.Diagnostics;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Threading;

namespace Renovación_LIS_Client
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>

    public partial class MainWindow : Window
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

            MainFrame.NavigationService.Navigate(new StartView(this));
            
        }

        private void AppExit(object sender, EventArgs e)
        {
            if (loggedProfile != null)
            {
                //profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
                //
                //profileClient.Close();
            }
        }

        private void ProcessExit(object sender, EventArgs e)
        {
            //if (loggedProfile != null)
            //{
            //    ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback()));
            //    profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            //
            //    profileClient.Close();
            //}
        }

        private void DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
        {
            //if (loggedProfile != null)
            //{
            //    ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback()));
            //    profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            //
            //    profileClient.Close();
            //}

        }

        private void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (Debugger.IsAttached)
            {
                MessageBoxResult result = MessageBox.Show(
                resourceManager.GetString("Do you want to exit", cultureInfo),
                resourceManager.GetString("What do you want", cultureInfo),
                    MessageBoxButton.YesNo,
                    MessageBoxImage.Question
                );

                if (result == MessageBoxResult.Yes)
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

            }

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
    }

    public class ServiceChatCallback : IChatCallback
    {
        public void ReceiveMessage(string sender, string message)
        {
            // Update UI or handle the incoming message
        }
    }

    public class LivePlayerCallback : ILivePlayerCallback
    {
        public void UpdatePlayersList(string[] players)
        {
            throw new NotImplementedException();
        }
    }

    //[CallbackBehavior(UseSynchronizationContext = false)]
    public class ServiceProfileCallback : IProfileForCallbackMethodsCallback
    {
        private FriendsView friendsView;

        public ServiceProfileCallback() { }
        public ServiceProfileCallback(FriendsView friendsView)
        {
            this.friendsView = friendsView;
        }

        public void UpdateFriendsLists()
        {
            if (friendsView != null)
            {
                friendsView.ShowUpdatedFriendRequestsList();
            }
        }
    }

    //[CallbackBehavior(UseSynchronizationContext = false)]
    public class ServiceFriendRequestCallback : IFriendRequestForCallbackMethodsCallback
    {
        private FriendsView friendsView;

        public ServiceFriendRequestCallback() { }
        public ServiceFriendRequestCallback(FriendsView friendsView)
        {
            this.friendsView = friendsView;
        }

        public void UpdateFriendsRequestsLists()
        {
            if(friendsView != null)
            {
                friendsView.ShowUpdatedFriendRequestsList();
            }
        }
    }

}
