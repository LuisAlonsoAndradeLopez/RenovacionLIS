using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.Helpers;
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
        private void ConfigurationButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ConfigurationView(mainWindow));
        }

        private void FriendsButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new FriendsView(mainWindow));
        }

        private void PlayButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new GamemodeSelectionView(mainWindow));
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
