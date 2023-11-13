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

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ChatView.xaml
    /// </summary>
    public partial class ChatView : Page
    {
        private MainWindow mainWindow;
        Profile loggedProfile = new Profile();

        public ChatView(MainWindow mainWindow, Profile loggedProfile)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
        }
        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow, loggedProfile));
        }

        private void SendMessageButtonOnClick(object sender, RoutedEventArgs e)
        {

        }

    }
}
