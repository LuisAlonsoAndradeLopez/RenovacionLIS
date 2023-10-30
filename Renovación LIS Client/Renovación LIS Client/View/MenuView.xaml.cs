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
using Renovación_LIS_Client.ServicePlayerReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MenuView.xaml
    /// </summary>
    public partial class MenuView : Page
    {
        Players loggedPlayer;

        public MenuView(Players loggedPlayer)
        {
            this.loggedPlayer = loggedPlayer;
            WelcomeBackLabel.Content = WelcomeBackLabel.Content + loggedPlayer.NickName + "!";
            InitializeComponent();
        }

        private void ProfileButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ModifyProfileView(loggedPlayer));
        }

        private void QuitButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView());
        }
    }
}
