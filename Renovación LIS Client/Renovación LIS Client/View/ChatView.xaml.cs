using System;
using System.Globalization;
using System.Resources;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using domain;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para ChatView.xaml
    /// </summary>

    public partial class ChatView : Page
    {
        private MainWindow mainWindow;
        private ChatClient chatClient;
        private Profile loggedProfile = new Profile();
        private ProfileForCallbackMethodsClient profileForCallbackMethodsClient;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        public ChatView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient, ChatClient chatClient)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            PageStateManager.CurrentPage = this;
            this.chatClient = chatClient;

            ShowUpdatedChat();
        }
        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LobbyView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient));
        }

        private void SendMessageButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (!String.IsNullOrWhiteSpace(MessageTextBox.Text))
            {
                if (MessageTextBox.Text.Length <= 100)
                {
                    chatClient.SendMessage(loggedProfile.Player.NickName, MessageTextBox.Text);
                    MessageTextBox.Clear();
                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The message shouldn't have more than 100 characters");
                }
            }
        }

        public void ShowUpdatedChat()
        {
            MessagesStackPanel.Children.Clear();

            foreach (var profileAndMessage in chatClient.GetConnectedProfilesAndTheirMessages())
            {
                if(profileAndMessage.Key == "Chat Server")
                {
                    string message = profileAndMessage.Value;

                    if (message.Contains("has joined to the chat"))
                    {
                        message = $"{profileAndMessage.Value.Replace("has joined to the chat", "")}" + resourceManager.GetString("Has joined to the chat", cultureInfo);
                    }

                    if (message.Contains("left the chat"))
                    {
                        message = $"{profileAndMessage.Value.Replace("left the chat", "")}" + resourceManager.GetString("Left the chat", cultureInfo);
                    }


                    Border serviceChatMessageBorder = new Border
                    {
                        HorizontalAlignment = HorizontalAlignment.Center,
                        Height = 62,
                        MaxWidth = 3000,
                        Margin = new Thickness(0, 5, 0, 5),
                        CornerRadius = new CornerRadius(20),
                        Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF444444")),
                        Opacity = 0.8
                    };

                    Label serviceChatMessageLabel = new Label
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        HorizontalAlignment = HorizontalAlignment.Left,
                        FontSize = 18,
                        Margin = new Thickness(10, 10, 10, 10),
                        Content = message
                    };

                    serviceChatMessageBorder.Child = serviceChatMessageLabel;
                    MessagesStackPanel.Children.Add(serviceChatMessageBorder);

                    continue;
                }
            
                if (profileAndMessage.Key != loggedProfile.Player.NickName && profileAndMessage.Key != "Chat Server")
                {
                    Border friendMessageBorder = new Border
                    {
                        HorizontalAlignment = HorizontalAlignment.Left,
                        Height = 94,
                        MaxWidth = 3000,
                        Margin = new Thickness(28, 5, 0, 5),
                        CornerRadius = new CornerRadius(20),
                        Background = new SolidColorBrush(Colors.Black),
                        Opacity = 0.8
                    };

                    StackPanel friendBorderContentStackPanel = new StackPanel
                    {
                        Orientation = Orientation.Horizontal
                    };

                    Image friendProfileImage = new Image
                    {
                        Source = new ImageLoader().GetImageByPlayerNickname(profileAndMessage.Key),
                        Width = 80,
                        Margin = new Thickness(20, 20, 5, 20)
                    };

                    StackPanel friendNicknameAndMessageStackPanel = new StackPanel();

                    Label friendNicknameLabel = new Label
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        HorizontalAlignment = HorizontalAlignment.Left,
                        FontSize = 18,
                        Margin = new Thickness(5, 0, 20, 2),
                        Content = profileAndMessage.Key
                    };

                    Label friendMessageLabel = new Label
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        HorizontalAlignment = HorizontalAlignment.Left,
                        FontSize = 18,
                        Margin = new Thickness(5, 2, 20, 0),
                        Content = profileAndMessage.Value
                    };

                    friendNicknameAndMessageStackPanel.Children.Add(friendNicknameLabel);
                    friendNicknameAndMessageStackPanel.Children.Add(friendMessageLabel);

                    friendBorderContentStackPanel.Children.Add(friendProfileImage);
                    friendBorderContentStackPanel.Children.Add(friendNicknameAndMessageStackPanel);

                    friendMessageBorder.Child = friendBorderContentStackPanel;

                    MessagesStackPanel.Children.Add(friendMessageBorder);

                    continue;
                }

                if (profileAndMessage.Key == loggedProfile.Player.NickName)
                {
                    Border loggedPlayerMessageBorder = new Border
                    {
                        HorizontalAlignment = HorizontalAlignment.Right,
                        Height = 62,
                        MaxWidth = 3000,
                        Margin = new Thickness(0, 5, 28, 5),
                        CornerRadius = new CornerRadius(20),
                        Background = new SolidColorBrush(Colors.Black),
                        Opacity = 0.8
                    };

                    Label loggedPlayerMessageLabel = new Label
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        HorizontalAlignment = HorizontalAlignment.Left,
                        FontSize = 18,
                        Margin = new Thickness(10, 10, 10, 10),
                        Content = profileAndMessage.Value
                    };

                    loggedPlayerMessageBorder.Child = loggedPlayerMessageLabel;
                    MessagesStackPanel.Children.Add(loggedPlayerMessageBorder);
                }
            
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
