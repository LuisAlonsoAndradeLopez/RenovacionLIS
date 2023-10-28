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

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para LoginView.xaml
    /// </summary>
    public partial class LoginView : Page
    {
        public LoginView()
        {
            InitializeComponent();
        }

        private void OpenForgotPasswordPage(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ForgotPassword());
        }

        private void OpenSignUpPage(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new CreateAccountView());
        }

        private void LogInButton_Click(object sender, RoutedEventArgs e)
        {

        }

        //Borralo despues
        private void LoginButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView());
        }
    }
}
