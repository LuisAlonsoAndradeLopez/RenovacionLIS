using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using domain;
using DomainStatuses;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MenuView.xaml
    /// </summary>
    public partial class MenuView : Page
    {
        private MainWindow mainWindow;
        Profile loggedProfile = new Profile();

        public MenuView(MainWindow mainWindow, Profile loggedProfile)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            WelcomeBackLabel.Content = WelcomeBackLabel.Content + loggedProfile.Player.NickName + "!";
        }

        public MenuView() { }

        private void FriendsButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new FriendsView(mainWindow, loggedProfile));
        }

        private void PlayButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ChatView(mainWindow, loggedProfile));
        }

        private void ProfileButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ModifyProfileView(mainWindow, loggedProfile));
        }

        private void QuitButtonOnClick(object sender, RoutedEventArgs e)
        {
            ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback(null)));
            profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            mainWindow.SetNullToLoggedProfile();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView(mainWindow));

            profileClient.Close();
        }
    }
}
