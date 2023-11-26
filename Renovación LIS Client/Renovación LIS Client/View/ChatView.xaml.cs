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
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileReference;

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

        public ChatView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            chatClient = new ChatClient(new InstanceContext(new MainWindow()));
            chatClient.JoinChat(loggedProfile.Player.NickName);
        }
        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            chatClient.LeaveChat(loggedProfile.Player.NickName);

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
        }

        private void SendMessageButtonOnClick(object sender, RoutedEventArgs e)
        {
            chatClient.SendMessage(loggedProfile.Player.NickName, MessageTextBox.Text);
            MessageTextBox.Clear();
        }

        public void ShowUpdatedChat(string senderNickname, string message)
        {
            if (senderNickname == "Chat Server")
            {
                Border serviceChatMessageBorder = new Border
                {
                    HorizontalAlignment = HorizontalAlignment.Center,
                    Height = 62,
                    MaxWidth = 109,
                    Margin = new Thickness(0, 10, 20, 0),
                    CornerRadius = new CornerRadius(20),
                    BorderBrush = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF444444")),
                    Opacity = 0.8
                };

                Label serviceChatMessageLabel = new Label
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    HorizontalAlignment = HorizontalAlignment.Left,
                    FontSize = 20,
                    Margin = new Thickness(10, 10, 0, 0),
                    Content = message
                };

                serviceChatMessageBorder.Child = serviceChatMessageLabel;
                MessagesStackPanel.Children.Add(serviceChatMessageBorder);
            }

            if (senderNickname != loggedProfile.Player.NickName && senderNickname != "Chat Server")
            {
                Border friendMessageBorder = new Border
                {
                    HorizontalAlignment = HorizontalAlignment.Left,
                    Height = 94,
                    MaxWidth = 433,
                    Margin = new Thickness(28, 10, 0, 0),
                    CornerRadius = new CornerRadius(20),
                    BorderBrush = new SolidColorBrush(Colors.Black),
                    Opacity = 0.8
                };

                StackPanel friendBorderContentStackPanel = new StackPanel
                {
                    Orientation = Orientation.Horizontal
                };

                BitmapImage imageSource = new BitmapImage();
                byte[] imageData = GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions(senderNickname);

                if (imageData != null)
                {
                    try
                    {
                        imageSource.BeginInit();
                        imageSource.StreamSource = new MemoryStream(imageData);
                        imageSource.EndInit();

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error: " + ex.Message);
                    }
                }

                Image friendProfileImage = new Image
                {
                    Width = 80,
                    Margin = new Thickness(5, 5, 0, 5),
                    Source = imageSource
                };

                StackPanel friendNicknameAndMessageStackPanel = new StackPanel();

                Label friendNicknameLabel = new Label
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    HorizontalAlignment = HorizontalAlignment.Left,
                    FontSize = 20,
                    Margin = new Thickness(10, 10, 0, 0),
                    Content = message
                };

                Label friendMessageLabel = new Label
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    HorizontalAlignment = HorizontalAlignment.Left,
                    FontSize = 20,
                    Margin = new Thickness(10, 2, 0, 0),
                    Content = message
                };

                friendNicknameAndMessageStackPanel.Children.Add(friendNicknameLabel);
                friendNicknameAndMessageStackPanel.Children.Add(friendMessageLabel);

                friendBorderContentStackPanel.Children.Add(friendProfileImage);
                friendBorderContentStackPanel.Children.Add(friendNicknameAndMessageStackPanel);

                friendMessageBorder.Child = friendBorderContentStackPanel;

                MessagesStackPanel.Children.Add(friendMessageBorder);
            }

            if (senderNickname == loggedProfile.Player.NickName)
            {
                Border loggedPlayerMessageBorder = new Border
                {
                    HorizontalAlignment = HorizontalAlignment.Right,
                    Height = 62,
                    MaxWidth = 109,
                    Margin = new Thickness(0, 10, 20, 0),
                    CornerRadius = new CornerRadius(20),
                    BorderBrush = new SolidColorBrush(Colors.Black),
                    Opacity = 0.8
                };

                Label loggedPlayerMessageLabel = new Label
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    HorizontalAlignment = HorizontalAlignment.Left,
                    FontSize = 20,
                    Margin = new Thickness(10, 10, 0, 0),
                    Content = message
                };

                loggedPlayerMessageBorder.Child = loggedPlayerMessageLabel;
                MessagesStackPanel.Children.Add(loggedPlayerMessageBorder);
            }

        }

        private byte[] GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions(string profileNickname)
        {
            ProfileClient profileClient = new ProfileClient();
            string fileName = profileNickname + ".png";
            byte[] imageData = profileClient.GetImage(fileName);

            if (imageData == null)
            {
                fileName = profileNickname + ".jpg";
                imageData = profileClient.GetImage(fileName);
            }

            if (imageData == null)
            {
                fileName = profileNickname + ".jpeg";
                imageData = profileClient.GetImage(fileName);
            }

            profileClient.Close();

            return imageData;
        }
    }
}
