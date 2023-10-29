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
    /// Lógica de interacción para ModifyProfileView.xaml
    /// </summary>
    public partial class ModifyProfileView : Page
    {
        public ModifyProfileView()
        {
            InitializeComponent();
        }

        private void CancelButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView());
        }

        private void ModifyProfileButton(object sender, RoutedEventArgs e)
        {

        }

        private void SelectImageButton(object sender, RoutedEventArgs e)
        {

        }
    }
}
