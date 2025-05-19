using System;
using System.IO;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.ServiceProfileForNonCallbackMethodsReference;


namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para ScoreView.xaml
    /// </summary>
    public partial class ScoreView : Page
    {
        private readonly MainWindow mainWindow;

        public ScoreView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();

            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            foreach (var profile in profileNonCallbackMethodsClient.GetAllProfilesAndItsScore())
            {
                Image profileImage = new Image
                {
                    Width = 70.6,
                    Height = 70.6,
                    Margin = new Thickness(25, 10, 25, 10),
                    Source = new ImageLoader().GetImageByPlayerNickname(profile.Key)
                };

                TextBlock profileNameTextBlock = new TextBlock
                {
                    Text = profile.Key,
                    Foreground = Brushes.White,
                    FontSize = 40,
                    FontFamily = (FontFamily)Application.Current.Resources["K2DBold"],
                    Margin = new Thickness(25, 15, 25, 15)
                };

                TextBlock profileScoreTextBlock = new TextBlock
                {
                    Text = profile.Value.ToString(),
                    Foreground = Brushes.White,
                    FontSize = 40,
                    FontFamily = (FontFamily)Application.Current.Resources["K2DBold"],
                    Margin = new Thickness(25, 15, 25, 15)
                };

                StackPanel profileDataStackPanel = new StackPanel
                {
                    Orientation = Orientation.Horizontal,
                    VerticalAlignment = VerticalAlignment.Center,
                    HorizontalAlignment = HorizontalAlignment.Center
                };

                Border profileDataBorder = new Border
                {
                    Background = new SolidColorBrush(Color.FromArgb(144, 0, 0, 0)),
                    CornerRadius = new CornerRadius(10),
                };

                profileDataStackPanel.Children.Add(profileImage);
                profileDataStackPanel.Children.Add(profileNameTextBlock);
                profileDataStackPanel.Children.Add(profileScoreTextBlock);

                profileDataBorder.Child = profileDataStackPanel;

                ProfileScoreStackPanel.Children.Add(profileDataBorder);
            }
        }

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new MenuView(mainWindow));
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
    }

    
}
