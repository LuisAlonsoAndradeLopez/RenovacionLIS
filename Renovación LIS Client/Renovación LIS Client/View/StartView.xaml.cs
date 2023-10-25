using System;
using System.Collections.Generic;
using System.Globalization;
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
    /// Lógica de interacción para StartView.xaml
    /// </summary>
    public partial class StartView : Page
    {
        public StartView()
        {
            InitializeComponent();
            ChangeLanguageLabel();
        }

        private void StartGame(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView());
        }

        private void ShowLanguages(object sender, MouseButtonEventArgs e)
        {
            LanguagePopUp.IsOpen = true;
        }

        private void CloseLanguages(object sender, MouseEventArgs e)
        {
            LanguagePopUp.IsOpen = false;
        }

        private void SetSpanishLanguage(object sender, RoutedEventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("es");

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new StartView());
        }

        private void SetEnglishLanguage(object sender, RoutedEventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en");

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new StartView());
        }

        private void ChangeLanguageLabel() 
        { 
            CultureInfo CurrentLanguage = CultureInfo.CurrentUICulture;
            

            if (CurrentLanguage.Name == "en")
            {
                LanguageLabel.Text = "English";
            }
            else
            {
                LanguageLabel.Text = "Español";
            }
        
        
        }

    }
}
