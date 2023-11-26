using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using domain;
using DomainStatuses;
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
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            WelcomeBackLabel.Content = WelcomeBackLabel.Content + loggedProfile.Player.NickName + "!";

            PageStateManager.CurrentPage = this;
        }

        public MenuView() { }

        private void FriendsButtonOnClick(object sender, RoutedEventArgs e)
        {            
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new FriendsView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
        }

        private void PlayButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ChatView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
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
    }
}
