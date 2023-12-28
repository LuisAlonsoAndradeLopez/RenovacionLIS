using System;
using System.Globalization;
using System.IO;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using domain;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceMultiplayerGameReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para LobbyView.xaml
    /// </summary>
    public partial class LobbyView : Page, IChatCallback, IMultiplayerGameCallback
    {
        /*
        TODO
        -Actualizar el chat para que se conserven los mensajes mientras se está en el LobbyView
        -Nuevo panel para amigos para invitarlo a la partida (falta que funcione el botón invitar)
        -Ajustar la posicion de los borders con info de los jugadores en el lobby
        -Al banear jugador debe de sacarlo del chat, de BannedPlayersView o de FriendsView o de la configuración
        */
        
        private MainWindow mainWindow;
        private ChatClient chatClient;
        private Profile loggedProfile;
        private MultiplayerGameClient multiplayerGameClient;
        private ProfileForCallbackMethodsClient profileForCallbackMethodsClient;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        public LobbyView()
        {
            InitializeComponent();
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            PageStateManager.CurrentPage = this;
        }

        public LobbyView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            PageStateManager.CurrentPage = this;

            chatClient = new ChatClient(new InstanceContext(this));
            multiplayerGameClient = new MultiplayerGameClient(new InstanceContext(this));
        }

        public LobbyView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient, ChatClient chatClient)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            PageStateManager.CurrentPage = this;

            this.chatClient = chatClient;
            multiplayerGameClient = new MultiplayerGameClient(new InstanceContext(this));
            ShowConnectedPlayers();
        }

        private void BanPlayerButtonOnClick(object sender, RoutedEventArgs e)
        {
            if(sender is Button button)
            {
                if (new AlertPopUpGenerator().OpenDesicionPopUp("Are you sure?", "Do you want to ban this player?"))
                {
                    StackPanel buttonParent = VisualTreeHelper.GetParent(button) as StackPanel;
                    StackPanel buttonParentParent = VisualTreeHelper.GetParent(buttonParent) as StackPanel;
                    StackPanel playerNicknameParent = (StackPanel)VisualTreeHelper.GetChild(buttonParentParent, 1);
                    TextBlock nickname = (TextBlock)VisualTreeHelper.GetChild(playerNicknameParent, 0);

                    multiplayerGameClient.BanPlayer(nickname.Text);

                    new AlertPopUpGenerator().OpenSuccessPopUp("Success", "Player banned successfully!");
                }
            }
        }

        private void BannedPlayersButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new BannedPlayersView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient, multiplayerGameClient));
        }

        private void ChatButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ChatView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient));
        }

        private void ConfigurationButtonOnClick(object sender, RoutedEventArgs e)
        {
            new AlertPopUpGenerator().OpenWarningPopUp("Unavailable", "Work in progress");
        }

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            chatClient.LeaveChat(loggedProfile.Player.NickName);
            multiplayerGameClient.Disconnect(loggedProfile.Player.NickName);
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
        }

        private void FriendsButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new FriendsView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient));
        }

        private void MakeAdminButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                if (new AlertPopUpGenerator().OpenDesicionPopUp("Are you sure?", "Do you want to set admin to this player?"))
                {
                    StackPanel buttonParent = VisualTreeHelper.GetParent(button) as StackPanel;
                    StackPanel buttonParentParent = VisualTreeHelper.GetParent(buttonParent) as StackPanel;
                    StackPanel playerNicknameParent = (StackPanel)VisualTreeHelper.GetChild(buttonParentParent, 1);
                    TextBlock nickname = (TextBlock)VisualTreeHelper.GetChild(playerNicknameParent, 0);

                    multiplayerGameClient.SetAdmin(nickname.Text);

                    new AlertPopUpGenerator().OpenSuccessPopUp("Success", "That player now is admin!");
                }
            }
        }

        private void PlayButtonOnClick(object sender, RoutedEventArgs e)
        {
            new AlertPopUpGenerator().OpenWarningPopUp("Unavailable", "Work in progress");
        }


        //Auxiliary Methods
        public void ExpelYou()
        {
            chatClient.LeaveChat(loggedProfile.Player.NickName);
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
            new AlertPopUpGenerator().OpenWarningPopUp("Uh oh!", "You have been banned!!!!!");
        }

        public void ShowConnectedPlayers()
        {
            ConnectedUsersStackPanel.Children.Clear();
            foreach (string profile in multiplayerGameClient.GetConnectedProfiles())
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

                if (multiplayerGameClient.IsAdmin(profile))
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

                if (profile == loggedProfile.Player.NickName)
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

                    if (multiplayerGameClient.IsAdmin(profile))
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

                if (multiplayerGameClient.IsAdmin(profile) || multiplayerGameClient.IsAdmin(loggedProfile.Player.NickName))
                {
                    profileImage.Height = 110;
                    profileImage.Width = 110;

                    if (profile == loggedProfile.Player.NickName)
                    {
                        profileImage.Margin = new Thickness(0, 10, 0, 0);
                    }
                    else
                    {
                        profileImage.Margin = new Thickness(0, 20, 0, 0);
                    }
                }

                if (!multiplayerGameClient.IsAdmin(loggedProfile.Player.NickName) && !multiplayerGameClient.IsAdmin(profile))
                {
                    profileImage.Margin = new Thickness(0, 20, 0, 0);

                    if (profile == loggedProfile.Player.NickName)
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

                if (multiplayerGameClient.IsAdmin(loggedProfile.Player.NickName) && !multiplayerGameClient.IsAdmin(profile))
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
                    };
                    makeAdminButton.Content = makeAdminButtonText;
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

        }


        //Callback methods
        public void UpdateChat(string senderNickname, string message)
        {
            if (PageStateManager.CurrentPage is ChatView currentPage)
            {
                if (senderNickname == "Chat Server")
                {
                    if (message.Contains("has joined to the chat"))
                    {
                        currentPage.ShowUpdatedChat
                        (
                            senderNickname,
                            $"{message.Replace("has joined to the chat", "")}" + resourceManager.GetString("Has joined to the chat", cultureInfo)
                        );
                    }

                    if (message.Contains("left the chat"))
                    {
                        currentPage.ShowUpdatedChat
                        (
                            senderNickname,
                            $"{message.Replace("left the chat", "")}" + resourceManager.GetString("Left the chat", cultureInfo)
                        );
                    }
                }
                else
                {
                    currentPage.ShowUpdatedChat(senderNickname, message);
                }
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
            if (PageStateManager.CurrentPage is LobbyView currentPage)
            {
                currentPage.ShowConnectedPlayers();
            }
        }

        public void ExpelPlayerFromLobbyView()
        {
            if (PageStateManager.CurrentPage is LobbyView currentPage)
            {
                currentPage.ExpelYou();
            }
        }
    }
}
