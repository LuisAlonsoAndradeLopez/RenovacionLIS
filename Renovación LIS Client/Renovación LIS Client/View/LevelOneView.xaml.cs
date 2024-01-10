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
    /// Lógica de interacción para LevelOneView.xaml
    /// </summary>
    public partial class LevelOneView : Page
    {
        public LevelOneView()
        {
            InitializeComponent();
        }

        private void LimitChar(object sender, TextCompositionEventArgs e)
        {
            TextBox textBox = sender as TextBox;
            
            if (!string.IsNullOrEmpty(textBox.Text))
            {
                e.Handled = true; 
                return;
            }

            if (!char.IsLetter(e.Text, 0))
            {
                e.Handled = true; 
            }
        }

        private void GoBack(object sender, RoutedEventArgs e)
        {
            //NavigationService navigationService = NavigationService.GetNavigationService(this);
            //navigationService.Navigate(new LevelView());
        }
    }
}
