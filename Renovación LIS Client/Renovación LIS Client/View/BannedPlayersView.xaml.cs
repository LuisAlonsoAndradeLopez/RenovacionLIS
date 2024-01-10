using System;
using System.Globalization;
using System.Resources;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.Helpers;
using Renovación_LIS_Client.ServiceLobbyForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para BannedPlayersView.xaml
    /// </summary>
    public partial class BannedPlayersView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        #endregion



        #region Constructors
        public BannedPlayersView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            InitializeComponent();
            ShowBannedPlayers();
        }
        #endregion



        #region Methods for GUIs elements events
        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LobbyView(mainWindow));
        }

        private void UnbanPlayerButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("Are you sure?", "Do you want to unban this player?"))
                {
                    StackPanel buttonParent = VisualTreeHelper.GetParent(button) as StackPanel;
                    Label playerNickname = (Label)VisualTreeHelper.GetChild(buttonParent, 1);

                    LobbyView.lobbyCallbackMethodsClient.UnbanPlayer(playerNickname.Content.ToString());

                    new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success", "Player unbanned!");
                }
            }
        }
        #endregion



        #region Auxiliary Methods
        public void GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin()
        {
            Thread.Sleep(1000);
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow));
        }

        public void ShowBannedPlayers()
        {
            BannedPlayersStackPanel.Children.Clear();
            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            foreach (string profile in lobbyNonCallbackMethodsClient.GetBannedProfiles())
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

                if (lobbyNonCallbackMethodsClient.IsAdmin(MainWindow.loggedProfile.Player.NickName))
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

        public void ExitFromThisPageForBeingExpeltFromLobbyView()
        {
            LobbyView.chatCallbackMethodsClient.LeaveChat(MainWindow.loggedProfile.Player.NickName);

            SongManager.Instance.StopMusic();
            SongManager.Instance.PlayMainSong();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow));
            new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Uh oh!", "You have been banned!!!!!");
        }
        #endregion
    }
}
