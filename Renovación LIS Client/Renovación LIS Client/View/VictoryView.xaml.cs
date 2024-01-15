using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para VictoryView.xaml
    /// </summary>
    public partial class VictoryView : Page
    {
        private readonly MainWindow mainWindow;
        private int level; 

        public VictoryView(MainWindow mainWindow, int level)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();

            this.level = level; 

            Txt_CurrentLevel.Text = level.ToString();
            Txt_NextLevel.Text = (level + 1).ToString();
        }

        private void GoToNextLevel(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelOneTwoView(mainWindow, level + 1));
        }

        private void ReturnToMenu(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelView(mainWindow));
        }
    }
}
