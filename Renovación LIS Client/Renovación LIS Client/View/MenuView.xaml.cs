using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using domain;
using DomainStatuses;
using Renovación_LIS_Client.ServicePlayerReference;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MenuView.xaml
    /// </summary>
    public partial class MenuView : Page
    {
        Profile loggedProfile = new Profile();

        public MenuView(Profile loggedProfile)
        {
            InitializeComponent();
            this.loggedProfile = loggedProfile;
            WelcomeBackLabel.Content = WelcomeBackLabel.Content + loggedProfile.Player.NickName + "!";
        }

        private void FriendsButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new FriendsView(loggedProfile));
        }

        private void ProfileButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ModifyProfileView(loggedProfile));
        }

        private void QuitButton(object sender, RoutedEventArgs e)
        {
            ProfileClient profileClient = new ProfileClient();
            profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView());
        }

    }
}
