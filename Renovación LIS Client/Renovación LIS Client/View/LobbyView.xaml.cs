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
        -Al entrar a la ventana de chat y salir debe de actualizar la pantalla 
        (y debe de abrir loginview en otro constructor, porque crashea)
        -Hacer BannedPlayersView
        -Al banear un jugador lo debe de sacar de la partida con un mensaje de que ha sido baneado
        -Si estas baneao debe de salir el mensaje de que estas baneao, no puedes entrar
        -Actualizar el chat para que se conserven los mensajes mientras se está en el LobbyView
        -Jugar como invitado (se va a dejar al final)

        */
        

        private MainWindow mainWindow;
        private ChatClient chatClient;
        private Profile loggedProfile;
        private MultiplayerGameClient multiplayerGameClient;
        private ProfileForCallbackMethodsClient profileForCallbackMethodsClient;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

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
            chatClient.JoinChat(loggedProfile.Player.NickName);

            multiplayerGameClient = new MultiplayerGameClient(new InstanceContext(this));
            multiplayerGameClient.Connect(loggedProfile.Player.NickName);
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
            navigationService.Navigate(new BannedPlayersView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient));
        }

        private void ChatButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new ChatView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient));
        }

        private void ConfigurationButtonOnClick(object sender, RoutedEventArgs e)
        {

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

                if (multiplayerGameClient.IsAdmin(profile) || multiplayerGameClient.IsAdmin(loggedProfile.Player.NickName))
                {
                    Image profileImage = new Image
                    {
                        Source = new ImageLoader().GetImageByPlayerNickname(profile),
                        Margin = new Thickness(0, 20, 0, 0),
                        Height = 110,
                        Width = 110
                    };

                    playerBorderStackPanel.Children.Add(profileImage);
                }

                if (!multiplayerGameClient.IsAdmin(loggedProfile.Player.NickName) && !multiplayerGameClient.IsAdmin(profile))
                {
                    Image profileImage = new Image
                    {
                        Source = new ImageLoader().GetImageByPlayerNickname(profile),
                        Margin = new Thickness(0, 20, 0, 0),
                        Height = 160,
                        Width = 160
                    };

                    playerBorderStackPanel.Children.Add(profileImage);
                }

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

                playerBorder.Child = playerBorderStackPanel;
                ConnectedUsersStackPanel.Children.Add(playerBorder);
            }

        }

        //Auxiliary Methods
       


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
    }
}
