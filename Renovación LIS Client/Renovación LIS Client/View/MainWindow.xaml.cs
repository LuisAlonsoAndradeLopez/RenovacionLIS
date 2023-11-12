using domain;
using DomainStatuses;
using Intersoft.Crosslight;
using Renovación_LIS_Client.ServiceProfileReference;
using Renovación_LIS_Client.View;
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
            this.Closing += MainWindowClosing;

            MainFrame.NavigationService.Navigate(new StartView(this));
            
        }

        private void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {

            MessageBoxResult result = MessageBox.Show("Deseas Salir?", "Closing", MessageBoxButton.YesNo, MessageBoxImage.Question);

            if (result == MessageBoxResult.Yes)
            {
                if(loggedProfile != null)
                {
                    ProfileClient profileClient = new ProfileClient();
                    profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
                }

            }
            else
            {
                e.Cancel = true;
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
}
