using System.Globalization;
using System.Resources;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using domain;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceMultiplayerGameReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para BannedPlayersView.xaml
    /// </summary>
    public partial class BannedPlayersView : Page
    {
        private MainWindow mainWindow;
        private ChatClient chatClient;
        private Profile loggedProfile;
        private ProfileForCallbackMethodsClient profileForCallbackMethodsClient;
        private MultiplayerGameClient multiplayerGameClient;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        public BannedPlayersView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient, ChatClient chatClient, MultiplayerGameClient multiplayerGameClient)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            PageStateManager.CurrentPage = this;

            this.chatClient = chatClient;
            this.multiplayerGameClient = multiplayerGameClient;
            ShowBannedPlayers();
        }

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LobbyView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient));
        }

        private void UnbanPlayerButtonOnClick(object sender, RoutedEventArgs e)
        {
            if(sender is Button button)
            {
                if (new AlertPopUpGenerator().OpenDesicionPopUp("Are you sure?", "Do you want to unban this player?"))
                {
                    StackPanel buttonParent = VisualTreeHelper.GetParent(button) as StackPanel;
                    Label playerNickname = (Label)VisualTreeHelper.GetChild(buttonParent, 1);

                    multiplayerGameClient.UnbanPlayer(playerNickname.Content.ToString());

                    new AlertPopUpGenerator().OpenSuccessPopUp("Success", "Player unbanned!");
                }
            }
        }

        public void ShowBannedPlayers()
        {
            BannedPlayersStackPanel.Children.Clear();
            foreach (string profile in multiplayerGameClient.GetBannedProfiles())
            {
                Border bannedPlayerBorder = new Border
                {
                    CornerRadius = new CornerRadius(20),
                    Height = 62,
                    Margin = new Thickness(25, 11, 25, 0),
                    Background = new SolidColorBrush(Colors.Black)
                };
                bannedPlayerBorder.Background.Opacity = 0.8;

                StackPanel bannedPlayerStackPanel = new StackPanel
                {
                    Orientation = Orientation.Horizontal
                };

                Image bannedPlayerImage = new Image
                {
                    Source = new ImageLoader().GetImageByPlayerNickname(profile),
                    Margin = new Thickness(30, 0, 0, 0),
                    Height = 40,
                    Width = 40
                };
                bannedPlayerStackPanel.Children.Add(bannedPlayerImage);

                Label bannedPlayerNickname = new Label
                {
                    Content = profile,
                    Foreground = new SolidColorBrush(Colors.White),
                    FontSize = 14,
                    Margin = new Thickness(15, 15, 0, 0),
                    Width = 250
                };
                bannedPlayerStackPanel.Children.Add(bannedPlayerNickname);

                if (multiplayerGameClient.IsAdmin(loggedProfile.Player.NickName))
                {
                    Button unbanBannedPlayerButton = new Button
                    {
                        Content = resourceManager.GetString("Unban", cultureInfo),
                        Style = (Style)FindResource("GreenButton"),
                        Height = 38,
                        Width = 88
                    };
                    unbanBannedPlayerButton.Click += UnbanPlayerButtonOnClick;
                    bannedPlayerStackPanel.Children.Add(unbanBannedPlayerButton);
                }

                bannedPlayerBorder.Child = bannedPlayerStackPanel;
                BannedPlayersStackPanel.Children.Add(bannedPlayerBorder);
            }                                   
        }

        //Auxiliary Methods
        public void ExitFromThisPageForBeingExpeltFromLobbyView()
        {
            chatClient.LeaveChat(loggedProfile.Player.NickName);
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
            new AlertPopUpGenerator().OpenWarningPopUp("Uh oh!", "You have been banned!!!!!");
        }
    }
}
