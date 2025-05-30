﻿using System;
using System.Globalization;
using System.IO;
using System.Resources;
using System.ServiceModel;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Client.AuxiliaryClasses;
using Client.Helpers;
using Client.ServiceChatForNonCallbackMethodsReference;
using Path = System.IO.Path;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para ChatView.xaml
    /// </summary>

    public partial class ChatView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        #endregion



        #region Constructors
        public ChatView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);

            InitializeComponent();
            ShowUpdatedChat();
        }
        #endregion



        #region Methods for GUIs elements events
        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LobbyView(mainWindow));

                SongManager.Instance.PlayClickSound();
            }
            catch (TimeoutException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }

        private void SendMessageButtonOnClick(object sender, RoutedEventArgs e)
        {
            LobbyView.RestartChatCallbackMethodsClient();

            try
            {
                if (!string.IsNullOrWhiteSpace(MessageTextBox.Text))
                {
                    if (MessageTextBox.Text.Length <= 100)
                    {
                        LobbyView.chatCallbackMethodsClient.SendMessage(MainWindow.loggedProfile.Player.NickName, MessageTextBox.Text);
                        MessageTextBox.Clear();

                        SongManager.Instance.PlayClickSound();
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The message shouldn't have more than 100 characters");
                    }
                }

            }
            catch (TimeoutException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
        #endregion



        #region Auxiliary methods
        public void GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin()
        {
            try
            {
                Thread.Sleep(1000);
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow));

                SongManager.Instance.PlayClickSound();
            }
            catch (TimeoutException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
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

        public void ShowUpdatedChat()
        {
                ChatNotCallbackMethodsClient chatNotCallbackMethodsClient = new ChatNotCallbackMethodsClient();
                chatNotCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

                MessagesStackPanel.Children.Clear();

                foreach (var profileAndMessage in chatNotCallbackMethodsClient.GetConnectedProfilesAndTheirMessages())
                {
                    if (profileAndMessage.Key == "Chat Server")
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

                    if (profileAndMessage.Key != MainWindow.loggedProfile.Player.NickName && profileAndMessage.Key != "Chat Server")
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

                    if (profileAndMessage.Key == MainWindow.loggedProfile.Player.NickName)
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

                chatNotCallbackMethodsClient.Close();
            
        }

        public void ExitFromThisPageForBeingExpeltFromLobbyView()
        {
            LobbyView.RestartChatCallbackMethodsClient();

            try
            {
                LobbyView.chatCallbackMethodsClient.LeaveChat(MainWindow.loggedProfile.Player.NickName);

                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new MenuView(mainWindow));
                new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Uh oh!", "You have been banned!!!!!");

                SongManager.Instance.StopMusic();
                SongManager.Instance.PlayMainSong();
            }
            catch (TimeoutException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
            catch (EndpointNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                new AlertPopUpGenerator().OpenInternationalizedInGameConnectionErrorPopUp(this);
            }
        }
        #endregion
    }
}
