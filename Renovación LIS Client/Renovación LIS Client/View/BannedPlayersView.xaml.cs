using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.ServiceModel;
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

        public BannedPlayersView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient, ChatClient chatClient)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            PageStateManager.CurrentPage = this;

            this.chatClient = chatClient;
            multiplayerGameClient = new MultiplayerGameClient(new InstanceContext(new LobbyView(mainWindow, loggedProfile, profileForCallbackMethodsClient)));
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
                    Width = 502,
                    Margin = new Thickness(0, 11, 0, 0),
                    Background = new SolidColorBrush(Colors.Black)
                    //Opacity = "0.8"
                };

                StackPanel bannedPlayerStackPanel = new StackPanel
                {
                    Orientation = Orientation.Horizontal
                };

                Image bannedPlayerImage = new Image
                {
                    Source = new ImageLoader().GetImageByPlayerNickname(profile),
                    Margin = new Thickness(10, 0, 0, 0),
                    Height = 40,
                    Width = 40
                };
                bannedPlayerStackPanel.Children.Add(bannedPlayerImage);

                Label bannedPlayerNickname = new Label
                {
                    Content = profile,
                    Foreground = new SolidColorBrush(Colors.White),
                    FontSize = 20,
                    Margin = new Thickness(10, 10, 0, 10),
                    Width = 345
                };
                bannedPlayerStackPanel.Children.Add(bannedPlayerNickname);

                if (multiplayerGameClient.IsAdmin(loggedProfile.Player.NickName))
                {
                    Button unbanBannedPlayerButton = new Button
                    {
                        Content = resourceManager.GetString("Unban", cultureInfo),
                        Style = (Style)FindResource("GreenButton"),
                        Height = 38,
                        Width = 88,
                        Margin = new Thickness(0, 0, 10, 0)
                    };
                    unbanBannedPlayerButton.Click += UnbanPlayerButtonOnClick;
                    bannedPlayerStackPanel.Children.Add(unbanBannedPlayerButton);
                }

                bannedPlayerBorder.Child = bannedPlayerStackPanel;
                BannedPlayersStackPanel.Children.Add(bannedPlayerBorder);
            }                                   
        }
    }
}
