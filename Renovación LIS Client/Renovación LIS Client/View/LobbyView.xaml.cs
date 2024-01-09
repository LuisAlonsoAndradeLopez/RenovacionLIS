using System;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceChatForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceLobbyForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceLobbyForNonCallbackMethodsReference;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para LobbyView.xaml
    /// </summary>
    public partial class LobbyView : Page, IChatCallbackMethodsCallback, ILobbyCallbackMethodsCallback
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        public static ChatCallbackMethodsClient chatCallbackMethodsClient;
        public static LobbyCallbackMethodsClient lobbyCallbackMethodsClient;
        #endregion



        #region Constructors
        public LobbyView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;
            chatCallbackMethodsClient = new ChatCallbackMethodsClient(new InstanceContext(this));
            lobbyCallbackMethodsClient = new LobbyCallbackMethodsClient(new InstanceContext(this));

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            InitializeComponent();
            ShowConnectedPlayers();

            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();

            if (lobbyNonCallbackMethodsClient.IsAdmin(MainWindow.loggedProfile.Player.NickName))
            {
                AdminPlayerButtonsStackPanel.Visibility = Visibility.Visible;
                NormalPlayerButtonsStackPanel.Visibility = Visibility.Collapsed;
            }
            else
            {
                AdminPlayerButtonsStackPanel.Visibility = Visibility.Collapsed;
                NormalPlayerButtonsStackPanel.Visibility = Visibility.Visible;
            }

            lobbyNonCallbackMethodsClient.Close();
        }
        #endregion



        #region Methods for GUIs elements events
        private void BanPlayerButtonOnClick(object sender, RoutedEventArgs e)
        {
            if(sender is Button button)
            {
                if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("Are you sure?", "Do you want to ban this player?"))
                {
                    StackPanel buttonParent = VisualTreeHelper.GetParent(button) as StackPanel;
                    StackPanel buttonParentParent = VisualTreeHelper.GetParent(buttonParent) as StackPanel;
                    StackPanel playerNicknameParent = (StackPanel)VisualTreeHelper.GetChild(buttonParentParent, 1);
                    TextBlock nickname = (TextBlock)VisualTreeHelper.GetChild(playerNicknameParent, 0);

                    lobbyCallbackMethodsClient.BanPlayer(nickname.Text);

                    new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success", "Player banned successfully!");
                }
            }
        }

        private void BannedPlayersButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new BannedPlayersView(mainWindow));
        }

        private void ChatButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ChatView(mainWindow));
        }

        private void ConfigurationButtonOnClick(object sender, RoutedEventArgs e)
        {
            new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Unavailable", "Work in progress");
        }

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            LobbyView.chatCallbackMethodsClient.LeaveChat(MainWindow.loggedProfile.Player.NickName);
            lobbyCallbackMethodsClient.Disconnect(MainWindow.loggedProfile.Player.NickName);
            RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.Disconnect(MainWindow.loggedProfile.Player.NickName);
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow));
        }

        private void FriendsButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new FriendsView(mainWindow, true));
        }

        private void MakeAdminButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("Are you sure?", "Do you want to set admin to this player?"))
                {
                    StackPanel buttonParent = VisualTreeHelper.GetParent(button) as StackPanel;
                    StackPanel buttonParentParent = VisualTreeHelper.GetParent(buttonParent) as StackPanel;
                    StackPanel playerNicknameParent = (StackPanel)VisualTreeHelper.GetChild(buttonParentParent, 1);
                    TextBlock nickname = (TextBlock)VisualTreeHelper.GetChild(playerNicknameParent, 0);

                    lobbyCallbackMethodsClient.SetAdmin(nickname.Text);

                    new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success", "That player now is admin!");
                }
            }
        }

        private void PlayButtonOnClick(object sender, RoutedEventArgs e)
        {
            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            if (lobbyNonCallbackMethodsClient.GetConnectedProfiles().Length >= 2 &&
                lobbyNonCallbackMethodsClient.GetConnectedProfiles().Length <= 4) {
                lobbyNonCallbackMethodsClient.SetThePlayersAreInGame();
                MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
                multiplayerCrosswordNonCallbackMethodsClient.SetAdmin(lobbyNonCallbackMethodsClient.GetAdmin());

                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages();   
            }
            else
            {
                new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Uh oh!", "Should be in the lobby 2-4 players to start the game");
            }

            lobbyNonCallbackMethodsClient.Close();
        }
        #endregion



        #region Auxiliary Methods
        public void ExitFromThisPageForBeingExpeltFromLobbyView()
        {
            LobbyView.chatCallbackMethodsClient.LeaveChat(MainWindow.loggedProfile.Player.NickName);
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow));
            new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Uh oh!", "You have been banned!!!!!");
        }

        public void GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin()
        {
            StartBlackScreenAnimation();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow));
        }

        public void ShowConnectedPlayers()
        {
            ConnectedUsersStackPanel.Children.Clear();

            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            foreach (string profile in lobbyNonCallbackMethodsClient.GetConnectedProfiles())
            {
                Border playerBorder = new Border
                {
                    Margin = new Thickness(20, 0, 0, 0),
                    Height = 280,
                    Width = 242,
                    CornerRadius = new CornerRadius(20),
                    Background = new SolidColorBrush(Colors.Black)
                };
                playerBorder.Background.Opacity = 0.5;

                Grid playerBorderContainer = new Grid();

                StackPanel playerBorderStackPanel = new StackPanel();

                if (lobbyNonCallbackMethodsClient.IsAdmin(profile))
                {
                    TextBlock adminText = new TextBlock
                    {
                        Text = resourceManager.GetString("Admin", cultureInfo),
                        Margin = new Thickness(0, 13, 0, 0),
                        VerticalAlignment = VerticalAlignment.Center,
                        Foreground = new SolidColorBrush(Colors.Gold),
                        TextWrapping = TextWrapping.Wrap,
                        TextAlignment = TextAlignment.Center,
                        HorizontalAlignment = HorizontalAlignment.Center,
                        FontSize = 30,
                        Width = 218
                    };

                    playerBorderStackPanel.Children.Add(adminText);
                }

                if (profile == MainWindow.loggedProfile.Player.NickName)
                {
                    TextBlock youText = new TextBlock
                    {
                        Text = resourceManager.GetString("You", cultureInfo),
                        VerticalAlignment = VerticalAlignment.Center,
                        Foreground = new SolidColorBrush(Colors.White),
                        TextWrapping = TextWrapping.Wrap,
                        TextAlignment = TextAlignment.Center,
                        HorizontalAlignment = HorizontalAlignment.Center,
                        FontSize = 30,
                        Width = 218
                    };

                    if (lobbyNonCallbackMethodsClient.IsAdmin(profile))
                    {
                        youText.Margin = new Thickness(0, 13, 0, 0);
                    }
                    else
                    {
                        youText.Margin = new Thickness(0, 0, 0, 0);
                    }


                    playerBorderStackPanel.Children.Add(youText);
                }

                Image profileImage = new Image
                {
                    Source = new ImageLoader().GetImageByPlayerNickname(profile)
                };

                if (lobbyNonCallbackMethodsClient.IsAdmin(profile) || lobbyNonCallbackMethodsClient.IsAdmin(MainWindow.loggedProfile.Player.NickName))
                {
                    profileImage.Height = 110;
                    profileImage.Width = 110;

                    if (profile == MainWindow.loggedProfile.Player.NickName)
                    {
                        profileImage.Margin = new Thickness(0, 10, 0, 0);
                    }
                    else
                    {
                        profileImage.Margin = new Thickness(0, 20, 0, 0);
                    }
                }

                if (!lobbyNonCallbackMethodsClient.IsAdmin(MainWindow.loggedProfile.Player.NickName) && !lobbyNonCallbackMethodsClient.IsAdmin(profile))
                {
                    profileImage.Margin = new Thickness(0, 20, 0, 0);

                    if (profile == MainWindow.loggedProfile.Player.NickName)
                    {
                        profileImage.Height = 110;
                        profileImage.Width = 110;
                    }
                    else
                    {
                        profileImage.Height = 160;
                        profileImage.Width = 160;
                    }
                }

                playerBorderStackPanel.Children.Add(profileImage);

                StackPanel playerNicknameStackPanel = new StackPanel
                {
                    Height = 54,
                    Margin = new Thickness(0, 20, 0, 0)
                };

                TextBlock playerNickname = new TextBlock
                {
                    Text = profile,
                    VerticalAlignment = VerticalAlignment.Center,
                    Foreground = new SolidColorBrush(Colors.White),
                    TextWrapping = TextWrapping.Wrap,
                    TextAlignment = TextAlignment.Center,
                    HorizontalAlignment = HorizontalAlignment.Center,
                    FontSize = 20,
                    Width = 218
                };

                playerNicknameStackPanel.Children.Add(playerNickname);
                playerBorderStackPanel.Children.Add(playerNicknameStackPanel);

                if (lobbyNonCallbackMethodsClient.IsAdmin(MainWindow.loggedProfile.Player.NickName) && !lobbyNonCallbackMethodsClient.IsAdmin(profile))
                {
                    StackPanel buttonsStackPanel = new StackPanel
                    {
                        Margin = new Thickness(0, 15, 0, 0),
                        Orientation = Orientation.Horizontal
                    };

                    TextBlock makeAdminButtonText = new TextBlock
                    {
                        TextWrapping = TextWrapping.Wrap,
                        TextAlignment = TextAlignment.Center,
                        Text = resourceManager.GetString("Make admin", cultureInfo)
                    };

                    Button makeAdminButton = new Button
                    {
                        Style = (Style)FindResource("GreenButton"),
                        FontSize = 13,
                        Height = 38,
                        Width = 96,
                        Margin = new Thickness(20, 0, 0, 0),
                        Content = makeAdminButtonText
                    };
                    makeAdminButton.Click += MakeAdminButtonOnClick;

                    Button banPlayerButton = new Button
                    {
                        Content = resourceManager.GetString("Ban", cultureInfo),
                        Style = (Style)FindResource("RedButton"),
                        Height = 38,
                        Width = 96,
                        Margin = new Thickness(10, 0, 0, 0)
                    };
                    banPlayerButton.Click += BanPlayerButtonOnClick;

                    buttonsStackPanel.Children.Add(makeAdminButton);
                    buttonsStackPanel.Children.Add(banPlayerButton);
                    playerBorderStackPanel.Children.Add(buttonsStackPanel);
                }

                playerBorderContainer.Children.Add(playerBorderStackPanel);
                playerBorder.Child = playerBorderContainer;
                ConnectedUsersStackPanel.Children.Add(playerBorder);
            }

            lobbyNonCallbackMethodsClient.Close();
        }

        public void StartBlackScreenAnimation()
        {
            var animation = new DoubleAnimation
            {
                From = 0,
                To = 1,
                Duration = TimeSpan.FromSeconds(1),
                FillBehavior = FillBehavior.HoldEnd
            };

            BlackScreenRectangle.Visibility = Visibility.Visible;
            BlackScreenRectangle.BeginAnimation(Rectangle.OpacityProperty, animation);
        }
        #endregion



        #region Callback methods
        public void UpdateChat()
        {
            if (PageStateManager.CurrentPage is ChatView currentPage)
            {
                currentPage.ShowUpdatedChat();
            }
        }

        public void UpdateBannedProfilesLists()
        {
            if (PageStateManager.CurrentPage is BannedPlayersView currentPage)
            {
                currentPage.ShowBannedPlayers();
            }
        }

        public void UpdateConnectedProfilesLists()
        {
            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            if (PageStateManager.CurrentPage is LobbyView currentPage)
            {
                currentPage.ShowConnectedPlayers();

                if (lobbyNonCallbackMethodsClient.IsAdmin(MainWindow.loggedProfile.Player.NickName))
                {
                    currentPage.AdminPlayerButtonsStackPanel.Visibility = Visibility.Visible;
                    currentPage.NormalPlayerButtonsStackPanel.Visibility = Visibility.Collapsed;
                }
                else
                {
                    currentPage.AdminPlayerButtonsStackPanel.Visibility = Visibility.Collapsed;
                    currentPage.NormalPlayerButtonsStackPanel.Visibility = Visibility.Visible;
                }
            }

            lobbyNonCallbackMethodsClient.Close();
        }

        public void UpdateConnectedProfilesForInviteToLobbyLists()
        {
            if (PageStateManager.CurrentPage is FriendsView currentPage)
            {
                currentPage.ShowConnectedFriendsListForInviteToLobby();
            }
        }

        public void ExpelPlayerFromMultiplayerGame()
        {
            if (PageStateManager.CurrentPage is LobbyView lobbyView)
            {
                lobbyView.ExitFromThisPageForBeingExpeltFromLobbyView();
            }
            else if (PageStateManager.CurrentPage is BannedPlayersView bannedPlayersView)
            {
                bannedPlayersView.ExitFromThisPageForBeingExpeltFromLobbyView();
            }
            else if (PageStateManager.CurrentPage is FriendsView friendsView)
            {
                friendsView.ExitFromThisPageForBeingExpeltFromLobbyView();
            }
            else if (PageStateManager.CurrentPage is ChatView chatView)
            {
                chatView.ExitFromThisPageForBeingExpeltFromLobbyView();
            }
            else if (PageStateManager.CurrentPage is ConfigurationView configurationView)
            {
                //configurationView.ExitFromThisPageForBeingExpeltFromLobbyView();
            }
        }
        #endregion
    }
}
