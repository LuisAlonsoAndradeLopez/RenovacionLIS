using domain;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileReference;
using Renovación_LIS_Client.View;
using System;
using System.Globalization;
using System.Resources;
using System.Windows;
using System.Windows.Controls;
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

        //Callback Method         
        public void UpdateFriendsLists()
        {
            if (PageStateManager.CurrentPage is FriendsView currentPage)
            {
                currentPage.ShowUpdatedFriendsList();
            }            
        }
    }

    public class PageStateManager
    {
        public static Page CurrentPage { get; set; }
    }

}
