using System.Globalization;
using System.Resources;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using domain;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MultiplayerCrosswordView.xaml
    /// </summary>
    public partial class MultiplayerCrosswordView : Page
    {
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        public MultiplayerCrosswordView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;
            this.mainWindow = mainWindow;
            
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            InitializeComponent();

            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();

            if (MainWindow.loggedProfile.Player.NickName == multiplayerCrosswordNonCallbackMethodsClient.GetAdmin())
            {
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartGlobalCountdown(10);
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartGameCountdown(25);
            }

            UpdateProfilesPointsList();

            switch (multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordNumberSelected())
            {
                case 1:
                    Show105CrosswordQuestions();
                    break;

                case 2:
                    ShowCC3CrosswordQuestions();
                    break;

                case 3:
                    ShowECONEXBathroomLowLevelCrosswordQuestions();
                    break;

                case 4:
                    ShowDoctoratedInCSCrosswordQuestions();
                    break;

                case 5:
                    ShowCrystalSaloonCrosswordQuestions();
                    break;
            }
        }

        public void VerifyAnswerButtonOnClick(object sender, RoutedEventArgs e)
        {

        }


        #region Crossword questions selection methods
        private void Show105CrosswordQuestions()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\105MultiplayerCrosswordImage.png");

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 30
            };

            verticalQuestions.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 30
            };

            horizontalQuestions.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowCC3CrosswordQuestions()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\CC3MultiplayerCrosswordImage.png");

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 30
            };

            verticalQuestions.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("ECONEX bathroom low level", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 30
            };

            horizontalQuestions.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("ECONEX bathroom low level", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowECONEXBathroomLowLevelCrosswordQuestions()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\bañoMultiplayerCrosswordImage.png");

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 30
            };

            verticalQuestions.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("ECONEX bathroom low level", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 30
            };

            horizontalQuestions.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("ECONEX bathroom low level", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowDoctoratedInCSCrosswordQuestions()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\doctoradoEnCienciasDeLaComputaciónMultiplayerCrosswordImage.png");

            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 30
            };

            verticalQuestions.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("ECONEX bathroom low level", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 30
            };

            horizontalQuestions.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("ECONEX bathroom low level", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("ECONEX bathroom low level", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowCrystalSaloonCrosswordQuestions()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\salónCristalMultiplayerCrosswordImage.png");

        }
        #endregion



        #region Auxiliary methods
        public void UpdateGoText()
        {
            //GlobalCountdownSecondsTextBlock.Text = resourceManager.GetString("Go!", cultureInfo);
            GlobalCountdownSecondsTextBlock.Text = "Vamoh";
            Thread.Sleep(1000);
            GlobalCountdownSecondsTextBlock.Visibility = Visibility.Collapsed;
        }

        public void UpdateTimesUpText()
        {
            GlobalCountdownSecondsTextBlock.Visibility = Visibility.Visible;
            //GlobalCountdownSecondsTextBlock.Text = resourceManager.GetString("Times up!", cultureInfo);
            GlobalCountdownSecondsTextBlock.Text = "Se acabó";
            Thread.Sleep(3000);
            GlobalCountdownSecondsTextBlock.Visibility = Visibility.Collapsed;
        }

        public void OpenRandomMultiplayerCrosswordGeneratorView()
        {
            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();

            NavigationService navigationService = NavigationService.GetNavigationService(this);

            if (multiplayerCrosswordNonCallbackMethodsClient.GetAdmin() == MainWindow.loggedProfile.Player.NickName)
            {
                navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow, true));
            }
            else
            {
                navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow, false));
            }
        }

        public void OpenWinnersView()
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new WinnersView(mainWindow));
        }

        public void UpdateGameCountdown(int seconds)
        {
            GameCountdownSecondsTextBlock.Text = seconds.ToString();
        }

        public void UpdateGlobalCountdown(int seconds)
        {
            GlobalCountdownSecondsTextBlock.Text = seconds.ToString();
        }

        public void UpdateCrosswordCompletition()
        {
            
        }

        public void UpdateProfilesPointsList()
        {
            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            foreach (var profile in multiplayerCrosswordNonCallbackMethodsClient.GetConnectedProfiles())
            {
                Border connectedProfileBorder = new Border
                {
                    Margin = new Thickness(10,10,2,10),
                    CornerRadius = new CornerRadius(20),
                    Height = 106,
                    Width = 270,
                    Background = new SolidColorBrush(Colors.Black)
                };

                connectedProfileBorder.Background.Opacity = 1;

                StackPanel connectedProfileStackPanel = new StackPanel
                {
                    Orientation = Orientation.Horizontal
                };

                Image connectedProfileImage = new Image
                {
                    Source = new ImageLoader().GetImageByPlayerNickname(profile),
                    Margin = new Thickness(10),
                    Width = 82,
                    Height = 82
                };

                StackPanel nicknameAndPointsOfConnectedProfileStackPanel = new StackPanel
                {
                    Width = 164,
                    Height = 96
                };

                TextBlock connectedProfileNicknameTextBlock = new TextBlock
                {
                    FontSize = 18,
                    TextAlignment = TextAlignment.Center,
                    TextWrapping = TextWrapping.Wrap,
                    Height = 58,
                    Foreground = new SolidColorBrush(Colors.White),
                    Text = profile,
                    Margin = new Thickness(4)
                };

                if (profile == MainWindow.loggedProfile.Player.NickName)
                {
                    connectedProfileNicknameTextBlock.Text = connectedProfileNicknameTextBlock.Text + " " + resourceManager.GetString("You", cultureInfo);
                }

                TextBlock connectedProfilePointsTextBlock = new TextBlock
                {
                    FontSize = 18,
                    TextAlignment = TextAlignment.Center,
                    TextWrapping = TextWrapping.Wrap,
                    Height = 25,
                    Foreground = new SolidColorBrush(Colors.White),
                    Text = multiplayerCrosswordNonCallbackMethodsClient.GetPointsFromAProfile(profile).ToString(),
                    Margin = new Thickness(4)
                };

                nicknameAndPointsOfConnectedProfileStackPanel.Children.Add(connectedProfileNicknameTextBlock);
                nicknameAndPointsOfConnectedProfileStackPanel.Children.Add(connectedProfilePointsTextBlock);

                connectedProfileStackPanel.Children.Add(connectedProfileImage);
                connectedProfileStackPanel.Children.Add(nicknameAndPointsOfConnectedProfileStackPanel);

                connectedProfileBorder.Child = connectedProfileStackPanel;
                ConnectedPlayersAndItsPointsStackPanel.Children.Add(connectedProfileBorder);
            }
        }
        #endregion
    }
}
