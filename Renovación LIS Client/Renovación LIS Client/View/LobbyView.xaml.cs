using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using domain;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para LobbyView.xaml
    /// </summary>
    public partial class LobbyView : Page, IChatCallback
    {
        private MainWindow mainWindow;
        private ChatClient chatClient;
        private Profile loggedProfile;
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
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
        }

        private void FriendsButtonOnClick(object sender, RoutedEventArgs e)
        {

        }

        private void PlayButtonOnClick(object sender, RoutedEventArgs e)
        {

        }


        //The callback method
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
    }
}
