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
    /// Lógica de interacción para VictoryView.xaml
    /// </summary>
    public partial class VictoryView : Page
    {

        private int level; 
        public VictoryView(int level)
        {
            InitializeComponent();

            this.level = level; 

            Txt_CurrentLevel.Text = level.ToString();
            Txt_NextLevel.Text = (level + 1).ToString();
        }

        private void GoToNextLevel(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelOneTwoView(level + 1));
        }

        private void ReturnToMenu(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelView());
        }
    }
}
