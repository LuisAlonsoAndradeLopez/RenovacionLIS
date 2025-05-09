using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceLobbyForNonCallbackMethodsReference;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para WinnersView.xaml
    /// </summary>
    public partial class WinnersView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        #endregion



        #region Constructors
        public WinnersView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;
            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            multiplayerCrosswordNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            profileNonCallbackMethodsClient.AddScoreToProfile(MainWindow.loggedProfile.Player.NickName, multiplayerCrosswordNonCallbackMethodsClient.GetPointsFromAProfile(MainWindow.loggedProfile.Player.NickName));

            InitializeComponent();

            ShowWinners();

            if (MainWindow.loggedProfile.Player.NickName == multiplayerCrosswordNonCallbackMethodsClient.GetAdmin())
            {
                AcceptButton.Visibility = Visibility.Visible;
            }

            multiplayerCrosswordNonCallbackMethodsClient.Close();
        }
        #endregion



        #region Methods for GUIs elements events
        private void AcceptButtonOnClick(object sender, RoutedEventArgs e)
        {
            RandomMultiplayerCrosswordGeneratorView.RestartMultiplayerCrosswordCallbackMethodsClient();

            try
            {
                LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
                lobbyNonCallbackMethodsClient.SetThePlayersAreNotInGame();

                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.EndGame();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.OpenTheLobbyViewToAllConnectedProfiles();
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
        #endregion



        #region Auxiliary methods
        public void ShowLobbyView()
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LobbyView(mainWindow));
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        private void ShowWinners()
        {
            PositionsStackPanel.Visibility = Visibility.Visible;

            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            multiplayerCrosswordNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                Dictionary<string, int> profilesAndItsPoints = new Dictionary<string, int>();

                List<string> profiles = new List<string>();
                List<int> points = new List<int>();

                foreach (var profileAndItsPoints in multiplayerCrosswordNonCallbackMethodsClient.GetAllProfilesAndItsPoints())
                {
                    profilesAndItsPoints.Add(profileAndItsPoints.Key, profileAndItsPoints.Value);
                }

                var profilesAndItsPointsOrderedByDescending = profilesAndItsPoints.OrderByDescending(kv => kv.Value)
                            .ToDictionary(kv => kv.Key, kv => kv.Value);

                foreach (var profileAndItsPointsOrdered in profilesAndItsPointsOrderedByDescending)
                {
                    profiles.Add(profileAndItsPointsOrdered.Key);
                    points.Add(profileAndItsPointsOrdered.Value);
                }


                int currentPlaceInTheIteration = 1;
                int highestPointInTheIteration;
                for (int i = 0; i < profiles.Count; i++)
                {
                    if (i > 0 && points[i] < points[i - 1])
                    {
                        currentPlaceInTheIteration++;
                        highestPointInTheIteration = points[i];
                    }

                    Border profileBorder = new Border
                    {
                        VerticalAlignment = VerticalAlignment.Bottom,
                        Background = new SolidColorBrush(Colors.Black)
                    };

                    profileBorder.Background.Opacity = 0.8;


                    StackPanel borderStackPanel = new StackPanel();

                    TextBlock placeText = new TextBlock
                    {
                        HorizontalAlignment = HorizontalAlignment.Center,
                        Margin = new Thickness(0, 10, 0, 0),
                        FontSize = 25
                    };

                    Image profileImage = new Image
                    {
                        Margin = new Thickness(0, 10, 0, 0),
                        Source = new ImageLoader().GetImageByPlayerNickname(profiles[i])
                    };

                    TextBlock nicknameTextBlock = new TextBlock
                    {
                        HorizontalAlignment = HorizontalAlignment.Center,
                        TextAlignment = TextAlignment.Center,
                        TextWrapping = TextWrapping.Wrap,
                        Margin = new Thickness(0, 10, 0, 0),
                        Foreground = new SolidColorBrush(Colors.White),
                        FontSize = 20,
                        Height = 60,
                        Text = profiles[i]
                    };

                    TextBlock pointsTextBlock = new TextBlock
                    {
                        HorizontalAlignment = HorizontalAlignment.Center,
                        TextWrapping = TextWrapping.Wrap,
                        Margin = new Thickness(0, 10, 0, 0),
                        Foreground = new SolidColorBrush(Colors.White),
                        FontSize = 20,
                        Height = 32,
                        Text = points[i].ToString()
                    };


                    if (profiles.Count == 2)
                    {
                        if (i == 0)
                        {
                            profileBorder.Margin = new Thickness(196, 0, 0, 0);
                        }
                        else
                        {
                            profileBorder.Margin = new Thickness(20, 0, 0, 0);
                        }

                        profileBorder.Width = 360;
                        nicknameTextBlock.Width = 330;
                    }

                    if (profiles.Count == 3)
                    {
                        if (i == 0)
                        {
                            profileBorder.Margin = new Thickness(90, 0, 0, 0);
                        }
                        else
                        {
                            profileBorder.Margin = new Thickness(20, 0, 0, 0);
                        }

                        profileBorder.Width = 310;
                        nicknameTextBlock.Width = 290;
                    }

                    if (profiles.Count == 4)
                    {
                        profileBorder.Margin = new Thickness(20, 0, 0, 0);
                        profileBorder.Width = 260;
                        nicknameTextBlock.Width = 250;
                    }



                    if (currentPlaceInTheIteration == 1)
                    {
                        profileBorder.Height = 408;

                        placeText.Text = resourceManager.GetString("First place", cultureInfo);
                        placeText.Foreground = new SolidColorBrush(Colors.Gold);

                        profileImage.Height = 222;
                        profileImage.Width = 222;
                    }
                    else if (currentPlaceInTheIteration == 2)
                    {
                        profileBorder.Height = 360;

                        placeText.Text = resourceManager.GetString("Second place", cultureInfo);
                        placeText.Foreground = new SolidColorBrush(Colors.Silver);

                        profileImage.Height = 176;
                        profileImage.Width = 176;
                    }
                    else if (currentPlaceInTheIteration == 3)
                    {
                        profileBorder.Height = 312;

                        placeText.Text = resourceManager.GetString("Third place", cultureInfo);
                        placeText.Foreground = new SolidColorBrush(Colors.DarkOrange);

                        profileImage.Height = 130;
                        profileImage.Width = 130;
                    }
                    else if (currentPlaceInTheIteration == 4)
                    {
                        profileBorder.Height = 264;

                        placeText.Text = resourceManager.GetString("Fourth place", cultureInfo);
                        placeText.Foreground = new SolidColorBrush(Colors.Purple);

                        profileImage.Height = 80;
                        profileImage.Width = 80;
                    }


                    borderStackPanel.Children.Add(placeText);
                    borderStackPanel.Children.Add(profileImage);
                    borderStackPanel.Children.Add(nicknameTextBlock);
                    borderStackPanel.Children.Add(pointsTextBlock);
                    profileBorder.Child = borderStackPanel;

                    PositionsStackPanel.Children.Add(profileBorder);
                }
            }
            catch (TimeoutException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException)
            {
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
        #endregion
    }
}
