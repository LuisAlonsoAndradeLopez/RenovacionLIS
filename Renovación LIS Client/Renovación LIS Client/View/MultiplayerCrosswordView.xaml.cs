using System;
using System.Globalization;
using System.Resources;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using System.Windows.Threading;
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

            UpdateProfilesPointsList();

            switch (multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordNumberSelected())
            {
                case 1:
                    Show105Background();
                    break;

                case 2:
                    ShowCC3Background();
                    break;

                case 3:
                    ShowECONEXBathroomLowLevelBackground();
                    break;

                case 4:
                    ShowDoctoratedInCSBackground();
                    break;

                case 5:
                    ShowCrystalSaloonBackground();
                    break;
            }

            if (MainWindow.loggedProfile.Player.NickName == multiplayerCrosswordNonCallbackMethodsClient.GetAdmin())
            {
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartGlobalCountdown(10);
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartGameCountdown(25);
            }


            multiplayerCrosswordNonCallbackMethodsClient.Close();
        }

        public void VerifyAnswerButtonOnClick(object sender, RoutedEventArgs e)
        {

        }


        #region Crossword questions and background selection methods
        private void Show105Background()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\105MultiplayerCrosswordImage.png");
        }

        private void ShowCC3Background()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\CC3MultiplayerCrosswordImage.png");
        }

        private void ShowECONEXBathroomLowLevelBackground()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\bañoMultiplayerCrosswordImage.png");
        }

        private void ShowDoctoratedInCSBackground()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\doctoradoEnCienciasDeLaComputaciónMultiplayerCrosswordImage.png");
        }

        private void ShowCrystalSaloonBackground()
        {
            SelectedCrosswordBackgroundImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("images\\salónCristalMultiplayerCrosswordImage.png");
        }

        //TODO:
        //Al salirse todos los jugadores, private static bool thePlayersAreInGame = false; debe de estar en falso
        //(Es de ServiceLobby)
        //Ajustar el botón aceptar de WinnersView, tiene que verse completo, está muy abajo
        //campo de texto de multiplayercrosswordvies la izquierda no se ve
        //multiplayercrosswordvies la imagen de fondo tiene que estar completa
        //winnersview tabla de gnadores dinamicos
        //crucigramas y jugabilidad (recueda que si alguien ya completó una fila o columna y la tienes abierta, abrir el mensaje que ya se completó)

        private void Show105CrosswordQuestions()
        {
            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 22,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Data structure that follows the FIFO principle", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("2. High-level programming language known for its simplicity and readability", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("3. Process of creating and developing software", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("5. Open source operating system", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 22,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("4. Process of obtaining and documenting the requirements of a system", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("6. Fundamental skill set and concepts in computer science", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowCC3CrosswordQuestions()
        {
            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 22,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Course that addresses legal aspects related to the technology", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("2. Model to represent the logical structure of a database", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("4. Markup language for creating web pages", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 22,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("3. Educational center for software engineering", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("5. Popular integrated development environment for various languages", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("6. Integrated development environment for Java", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowECONEXBathroomLowLevelCrosswordQuestions()
        {
            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 19,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Statement used in databases to retrieve data", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("3. Repetitive control structure", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("5. Professor who has a Master's Degree in Free Software at the Open University of Catalonia", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("6. Hosting and version control platform for collaborative development", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 19,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("2. Visual component that allows interaction with a program", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("4. Teacher who has Sun Certified Java Programmer", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("7. Software development methodology that uses interaction diagrams", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("8. Programming language for web development server side", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowDoctoratedInCSCrosswordQuestions()
        {
            TextBlock verticalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 22,
                TextWrapping = TextWrapping.Wrap
            };

            verticalQuestions.Text = resourceManager.GetString("Columns", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("1. Practices to avoid during programming", cultureInfo) + "\n";
            verticalQuestions.Text = verticalQuestions.Text + resourceManager.GetString("2. Measurement of the complexity of a program based on its control structure", cultureInfo) + "\n";
            verticalQuestions.Text += resourceManager.GetString("3. Statement used in databases to retrieve data", cultureInfo);

            TextBlock horizontalQuestions = new TextBlock
            {
                Margin = new Thickness(10),
                Foreground = new SolidColorBrush(Colors.White),
                FontSize = 22,
                TextWrapping = TextWrapping.Wrap
            };

            horizontalQuestions.Text = resourceManager.GetString("Rows", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("4. Process of obtaining and documenting the requirements of a system", cultureInfo) + "\n";
            horizontalQuestions.Text = horizontalQuestions.Text + resourceManager.GetString("5. Condition-based repetitive control structure", cultureInfo) + "\n";
            horizontalQuestions.Text += resourceManager.GetString("6. Integrated Development Environment (IDE) widely used for java", cultureInfo);

            SelectedCrosswordQuestionsStackPanel.Children.Add(verticalQuestions);
            SelectedCrosswordQuestionsStackPanel.Children.Add(horizontalQuestions);
        }

        private void ShowCrystalSaloonCrosswordQuestions()
        {


        }
        #endregion



        #region Auxiliary methods
        public void ShowTheSelectCrosswordAndItsQuestions()
        {
            GlobalCountdownBlockScreenRectangle.Visibility = Visibility.Collapsed;
            GlobalCountdownSecondsTextBlock.Visibility = Visibility.Collapsed;

            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
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

            multiplayerCrosswordNonCallbackMethodsClient.Close();
        }

        public void UpdateGoText()
        {
            GlobalCountdownSecondsTextBlock.Text = resourceManager.GetString("Go!", cultureInfo);            
        }

        public void UpdateTimesUpText()
        {
            GlobalCountdownBlockScreenRectangle.Visibility = Visibility.Visible;
            GlobalCountdownSecondsTextBlock.Visibility = Visibility.Visible;
            GlobalCountdownSecondsTextBlock.Text = resourceManager.GetString("Times up!", cultureInfo);
        }

        public void OpenRandomMultiplayerCrosswordGeneratorView()
        {
            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();

            NavigationService navigationService = NavigationService.GetNavigationService(this);

            if (multiplayerCrosswordNonCallbackMethodsClient.GetAdmin() == MainWindow.loggedProfile.Player.NickName)
            {
                navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow));
            }
            else
            {
                navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow));
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
                    connectedProfileNicknameTextBlock.Text = connectedProfileNicknameTextBlock.Text + " (" + resourceManager.GetString("You", cultureInfo) + ")";
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
