using domain;
using DomainStatuses;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceFriendRequestReference;
using Renovación_LIS_Client.ServiceLivePlayerReference;
using Renovación_LIS_Client.ServiceProfileReference;
using Renovación_LIS_Client.View;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
        Profile loggedProfile = null;
        public MainWindow()
        {
            InitializeComponent();
            

            Application.Current.DispatcherUnhandledException += DispatcherUnhandledException;
            Application.Current.Exit += AppExit;
            AppDomain.CurrentDomain.ProcessExit += ProcessExit;
            this.Closing += MainWindowClosing;

            MainFrame.NavigationService.Navigate(new StartView(this));
            
        }

        private void AppExit(object sender, EventArgs e)
        {
            if (loggedProfile != null)
            {
                ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback(null)));
                profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            }
        }

        private void ProcessExit(object sender, EventArgs e)
        {
            if (loggedProfile != null)
            {
                ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback(null)));
                profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            }
        }

        private void DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
        {
            if (loggedProfile != null)
            {
                ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback(null)));
                profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            }

        }

        private void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (Debugger.IsAttached)
            {
                MessageBoxResult result = MessageBox.Show("Deseas Salir?", "Closing", MessageBoxButton.YesNo, MessageBoxImage.Question);

                if (result == MessageBoxResult.Yes)
                {
                    if(loggedProfile != null)
                    {
                        ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback(null)));
                        profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
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
    public class ServiceProfileCallback : IProfileCallback
    {
        private FriendsView friendsView;

        public ServiceProfileCallback(FriendsView friendsView)
        {
            this.friendsView = friendsView;
        }
        public void UpdateFriendsLists()
        {
            friendsView.ShowUpdatedFriendsList();
        }
    }

    [CallbackBehavior(UseSynchronizationContext = false)]
    public class ServiceFriendRequestCallback : IFriendRequestCallback
    {
        private FriendsView friendsView;

        public ServiceFriendRequestCallback(FriendsView friendsView)
        {
            this.friendsView = friendsView;
        }

        public void UpdateFriendsRequestsLists()
        {
            friendsView.ShowUpdatedFriendRequestsList();
        }
    }

}
