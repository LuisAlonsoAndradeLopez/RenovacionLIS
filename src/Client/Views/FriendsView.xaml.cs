﻿using System;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Text.RegularExpressions;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Client.DomainStatuses;
using Client.AuxiliaryClasses;
using Client.Helpers;
using Client.ServiceFriendRequestForCallbackMethodsReference;
using Client.ServiceFriendRequestForNonCallbackMethodsReference;
using Client.ServiceLobbyForNonCallbackMethodsReference;
using Client.ServiceProfileForNonCallbackMethodsReference;
using Button = System.Windows.Controls.Button;
using Profile = Client.ServiceProfileForNonCallbackMethodsReference.Profile;
using FriendRequest = Client.ServiceFriendRequestForNonCallbackMethodsReference.FriendRequest;
using Orientation = System.Windows.Controls.Orientation;
using ProfileLoginStatuses = Client.DomainStatuses.ProfileLoginStatuses;
using System.IO;
using Path = System.IO.Path;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para FriendsView.xaml
    /// </summary>
    public partial class FriendsView : Page, IFriendRequestCallbackMethodsCallback
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;
        private readonly bool entryToThisPageViaLobbyView;

        private FriendRequestCallbackMethodsClient friendRequestCallbackMethodsClient;
        #endregion



        #region Constructors
        //Constructor only for use in the tests
        public FriendsView() { }

        public FriendsView(MainWindow mainWindow)
        {
            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);

            PageStateManager.CurrentPage = this;
            entryToThisPageViaLobbyView = false;

            friendRequestCallbackMethodsClient = new FriendRequestCallbackMethodsClient(new InstanceContext(this));
            friendRequestCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);
            friendRequestCallbackMethodsClient.Connect(MainWindow.loggedProfile.Player.NickName);

            InitializeComponent();


            ShowUpdatedFriendsList();
        }

        public FriendsView(MainWindow mainWindow, bool entryToThisPageViaLobbyView)
        {
            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);

            PageStateManager.CurrentPage = this;
            this.entryToThisPageViaLobbyView = entryToThisPageViaLobbyView;

            friendRequestCallbackMethodsClient = new FriendRequestCallbackMethodsClient(new InstanceContext(this));
            friendRequestCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);
            friendRequestCallbackMethodsClient.Connect(MainWindow.loggedProfile.Player.NickName);
            
            InitializeComponent();


            FriendsBorder.Visibility = Visibility.Hidden;
            ConnectedFriendsForInviteBorder.Visibility = Visibility.Visible;

            ShowConnectedFriendsListForInviteToLobby();
        }
        #endregion



        #region FriendList methods
        private void CancelFriendshipButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                mainWindow.RestartProfileCallbackMethodsClient();
                RestartFriendRequestCallbackMethodsClient();

                ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
                profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

                try
                {
                    if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("Are you sure?", "Are you sure you want to cancel the friendship?"))
                    {
                        ServiceProfileForNonCallbackMethodsReference.Players players = new ServiceProfileForNonCallbackMethodsReference.Players
                        {
                            IDPlayer = MainWindow.loggedProfile.Player.IDPlayer,
                            Names = MainWindow.loggedProfile.Player.Names,
                            Surnames = MainWindow.loggedProfile.Player.Surnames,
                            Email = MainWindow.loggedProfile.Player.Email,
                            NickName = MainWindow.loggedProfile.Player.NickName,
                            BirthDate = (DateTime)MainWindow.loggedProfile.Player.BirthDate,
                            Password = MainWindow.loggedProfile.Player.Password
                        };

                        ServiceProfileForNonCallbackMethodsReference.Profiles profiles = new ServiceProfileForNonCallbackMethodsReference.Profiles
                        {
                            IDProfile = MainWindow.loggedProfile.IDProfile,
                            Score = MainWindow.loggedProfile.Score,
                            LoginStatus = MainWindow.loggedProfile.LoginStatus,
                            Players = players
                        };

                        StackPanel parent = VisualTreeHelper.GetParent(button) as StackPanel;
                        TextBlock IDTextBlock = (TextBlock)VisualTreeHelper.GetChild(parent, 0);
                        Profile profile1 = profileNonCallbackMethodsClient.GetProfileByPlayerID(long.Parse(IDTextBlock.Text));

                        ServiceProfileForNonCallbackMethodsReference.Players players1 = new ServiceProfileForNonCallbackMethodsReference.Players
                        {
                            IDPlayer = profile1.Player.IDPlayer,
                            Names = profile1.Player.Names,
                            Surnames = profile1.Player.Surnames,
                            Email = profile1.Player.Email,
                            NickName = profile1.Player.NickName,
                            BirthDate = (DateTime)profile1.Player.BirthDate,
                            Password = profile1.Player.Password
                        };

                        ServiceProfileForNonCallbackMethodsReference.Profiles profiles1 = new ServiceProfileForNonCallbackMethodsReference.Profiles
                        {
                            IDProfile = profile1.IDProfile,
                            Score = profile1.Score,
                            LoginStatus = profile1.LoginStatus,
                            Players = players1
                        };

                        profileNonCallbackMethodsClient.CancelFriendship(
                            profiles,
                            profiles1
                        );

                        new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Friendship cancellation made successfully");

                        SongManager.Instance.PlayClickSound();

                    }

                    profileNonCallbackMethodsClient.Close();
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
        }

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                friendRequestCallbackMethodsClient.Disconnect(MainWindow.loggedProfile.Player.NickName);

                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new MenuView(mainWindow));

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

        private void InviteFriendButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Hidden;
            SendFriendRequestBorder.Visibility = Visibility.Visible;

            SongManager.Instance.PlayClickSound();
        }

        private void SeeFriendsRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                ShowUpdatedFriendRequestsList();
                FriendsBorder.Visibility = Visibility.Hidden;
                FriendsRequestsBorder.Visibility = Visibility.Visible;

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

        public void ShowUpdatedFriendsList()
        {
            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                OnlineFriendsStackPanel.Children.Clear();
                OfflineFriendsStackPanel.Children.Clear();

                foreach (Profile profile in profileNonCallbackMethodsClient.GetFriends(MainWindow.loggedProfile.Player.IDPlayer))
                {
                    Border friendBorder = new Border
                    {
                        Height = 55,
                        Margin = new Thickness(25, 10, 25, 0),
                        CornerRadius = new CornerRadius(20),
                        Background = new SolidColorBrush(Colors.Black)
                    };

                    StackPanel textAndButtonsStackPanel = new StackPanel
                    {
                        Orientation = Orientation.Horizontal
                    };

                    TextBlock idTextBlock = new TextBlock
                    {
                        Visibility = Visibility.Collapsed,
                        Text = profile.IDProfile.ToString()
                    };

                    Image friendProfileImage = new Image
                    {
                        Width = 42,
                        Height = 42,
                        Margin = new Thickness(30, 0, 0, 0),
                        Source = new ImageLoader().GetImageByPlayerNickname(profile.Player.NickName)
                    };

                    TextBlock nicknameTextBlock = new TextBlock
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        Margin = new Thickness(15, 0, 0, 0),
                        Width = 250,
                        TextWrapping = TextWrapping.Wrap,
                        FontSize = 14,
                        VerticalAlignment = VerticalAlignment.Center,
                        Text = profile.Player.NickName
                    };

                    Button cancelFriendshipButton = new Button
                    {
                        Style = (Style)FindResource("RedButton"),
                        Height = 35,
                        Width = 110,
                        HorizontalAlignment = HorizontalAlignment.Right,
                        Content = resourceManager.GetString("Cancel friendship", cultureInfo),
                        FontSize = 13,
                    };

                    cancelFriendshipButton.Click += CancelFriendshipButtonOnClick;

                    textAndButtonsStackPanel.Children.Add(idTextBlock);
                    textAndButtonsStackPanel.Children.Add(friendProfileImage);
                    textAndButtonsStackPanel.Children.Add(nicknameTextBlock);
                    textAndButtonsStackPanel.Children.Add(cancelFriendshipButton);

                    friendBorder.Child = textAndButtonsStackPanel;

                    if (profile.LoginStatus == Enum.GetName(typeof(ProfileLoginStatuses), ProfileLoginStatuses.Logged))
                    {
                        OnlineFriendsStackPanel.Children.Add(friendBorder);
                    }

                    if (profile.LoginStatus == Enum.GetName(typeof(ProfileLoginStatuses), ProfileLoginStatuses.NotLogged))
                    {
                        OfflineFriendsStackPanel.Children.Add(friendBorder);
                    }

                }

                profileNonCallbackMethodsClient.Close();
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



        #region SendFriendRequest methods
        private void CancelButtonOnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                ShowUpdatedFriendsList();
                SendFriendRequestBorder.Visibility = Visibility.Hidden;
                FriendsBorder.Visibility = Visibility.Visible;

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

        private void SendFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            mainWindow.RestartProfileCallbackMethodsClient();
            RestartFriendRequestCallbackMethodsClient();

            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);
            FriendRequestNonCallbackMethodsClient friendRequestNonCallbackMethodsClient = new FriendRequestNonCallbackMethodsClient();
            friendRequestNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (InvalidNicknameInSendFriendRequestTextFieldsTextGenerator() == "")
                {
                    if (new TextRange(MessageRichTextBox.Document.ContentStart, MessageRichTextBox.Document.ContentEnd).Text.Length <= 100)
                    {
                        if (profileNonCallbackMethodsClient.GetProfileByPlayerNickname(NicknameTextBox.Text) != null)
                        {
                            if (NicknameTextBox.Text != MainWindow.loggedProfile.Player.NickName)
                            {

                                if (!friendRequestNonCallbackMethodsClient.TheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile(
                                    MainWindow.loggedProfile.IDProfile,
                                    profileNonCallbackMethodsClient.GetProfileByPlayerNickname(NicknameTextBox.Text).IDProfile
                                    ))
                                {
                                    bool theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow = false;
                                    foreach (Profile p in profileNonCallbackMethodsClient.GetFriends(MainWindow.loggedProfile.IDProfile))
                                    {
                                        if (profileNonCallbackMethodsClient.GetProfileByPlayerNickname(NicknameTextBox.Text).Player.NickName == p.Player.NickName)
                                        {
                                            theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow = true;
                                            break;
                                        }
                                    }

                                    if (!theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow)
                                    {
                                        if (!friendRequestNonCallbackMethodsClient.TheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile(
                                            MainWindow.loggedProfile.IDProfile,
                                            profileNonCallbackMethodsClient.GetProfileByPlayerNickname(NicknameTextBox.Text).IDProfile
                                            ))
                                        {
                                            ServiceFriendRequestForNonCallbackMethodsReference.FriendRequests friendRequests = new ServiceFriendRequestForNonCallbackMethodsReference.FriendRequests
                                            {
                                                Message = new TextRange(MessageRichTextBox.Document.ContentStart, MessageRichTextBox.Document.ContentEnd).Text,
                                                CreationDate = DateTime.Now,
                                                AceptationStatus = Enum.GetName(typeof(FriendRequestAceptationStatuses), FriendRequestAceptationStatuses.Pendient),
                                                SendingStatus = Enum.GetName(typeof(FriendRequestSendingStatuses), FriendRequestSendingStatuses.Sent)
                                            };

                                            ServiceFriendRequestForNonCallbackMethodsReference.Players players = new ServiceFriendRequestForNonCallbackMethodsReference.Players
                                            {
                                                IDPlayer = MainWindow.loggedProfile.Player.IDPlayer,
                                                Names = MainWindow.loggedProfile.Player.Names,
                                                Surnames = MainWindow.loggedProfile.Player.Surnames,
                                                Email = MainWindow.loggedProfile.Player.Email,
                                                NickName = MainWindow.loggedProfile.Player.NickName,
                                                BirthDate = (DateTime)MainWindow.loggedProfile.Player.BirthDate,
                                                Password = MainWindow.loggedProfile.Player.Password
                                            };

                                            ServiceFriendRequestForNonCallbackMethodsReference.Profiles profiles = new ServiceFriendRequestForNonCallbackMethodsReference.Profiles
                                            {
                                                IDProfile = MainWindow.loggedProfile.IDProfile,
                                                Score = MainWindow.loggedProfile.Score,
                                                LoginStatus = MainWindow.loggedProfile.LoginStatus,
                                                Players = players
                                            };

                                            Profile profile1 = profileNonCallbackMethodsClient.GetProfileByPlayerNickname(NicknameTextBox.Text);

                                            ServiceFriendRequestForNonCallbackMethodsReference.Players players1 = new ServiceFriendRequestForNonCallbackMethodsReference.Players
                                            {
                                                IDPlayer = profile1.Player.IDPlayer,
                                                Names = profile1.Player.Names,
                                                Surnames = profile1.Player.Surnames,
                                                Email = profile1.Player.Email,
                                                NickName = profile1.Player.NickName,
                                                BirthDate = (DateTime)profile1.Player.BirthDate,
                                                Password = profile1.Player.Password
                                            };

                                            ServiceFriendRequestForNonCallbackMethodsReference.Profiles profiles1 = new ServiceFriendRequestForNonCallbackMethodsReference.Profiles
                                            {
                                                IDProfile = profile1.IDProfile,
                                                Score = profile1.Score,
                                                LoginStatus = profile1.LoginStatus,
                                                Players = players1
                                            };

                                            friendRequests.Profiles = profiles;
                                            friendRequests.Profiles1 = profiles1;

                                            friendRequestNonCallbackMethodsClient.AddFriendRequest(friendRequests);

                                            new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Friend request sent succesfully");

                                            ShowUpdatedFriendsList();
                                            SendFriendRequestBorder.Visibility = Visibility.Hidden;
                                            FriendsBorder.Visibility = Visibility.Visible;

                                            SongManager.Instance.PlayClickSound();
                                        }
                                        else
                                        {
                                            new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The user you want to send a friendrequest already has sent a friendrequest to you");
                                        }
                                    }
                                    else
                                    {
                                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "You cant't send a friend request to this user because is already your friend");
                                    }
                                }
                                else
                                {
                                    new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "You already has sent a friend request to this user");
                                }

                            }
                            else
                            {
                                new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "You can't send a friend request to yourself");
                            }

                        }
                        else
                        {
                            new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The user you want to sent a friend request doesn't exists");
                        }
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The message shouldn't have more than 100 characters");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", InvalidNicknameInSendFriendRequestTextFieldsTextGenerator());
                }

                friendRequestNonCallbackMethodsClient.Close();
                profileNonCallbackMethodsClient.Close();
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



        #region FriendRequestsList methods
        private void BackButtonOnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                ShowUpdatedFriendsList();
                FriendsRequestsBorder.Visibility = Visibility.Hidden;
                FriendsBorder.Visibility = Visibility.Visible;

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

        private void DetailsButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                FriendRequestNonCallbackMethodsClient friendRequestNonCallbackMethodsClient = new FriendRequestNonCallbackMethodsClient();
                friendRequestNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

                try
                {
                    StackPanel parent = VisualTreeHelper.GetParent(button) as StackPanel;

                    TextBlock IDTextBlock = (TextBlock)VisualTreeHelper.GetChild(parent, 0);


                    FriendRequest friendRequest = friendRequestNonCallbackMethodsClient.GetFriendRequestByID(long.Parse(IDTextBlock.Text));

                    NicknameLabel.Content = friendRequest.Profile.Player.NickName;
                    CreationDateLabel.Content = friendRequest.CreationDate;
                    MessageTextBlock.Text = friendRequest.Message;
                    IDFriendRequestLabel.Content = friendRequest.IDFriendRequest;

                    bool theButtonsAreShowAndHidden = false;
                    foreach (var receivedFriendRequestBorder in ReceivedFriendsRequestsStackPanel.Children)
                    {
                        if (receivedFriendRequestBorder is FrameworkElement frameworkElement)
                        {
                            if (frameworkElement is Border border)
                            {
                                StackPanel borderStackPanel = (StackPanel)border.Child;
                                TextBlock textBlockOfSelectedFriendRequestBorder = (TextBlock)VisualTreeHelper.GetChild(borderStackPanel, 0);

                                if (long.Parse(textBlockOfSelectedFriendRequestBorder.Text) == long.Parse(IDTextBlock.Text))
                                {
                                    AcceptFriendRequestButton.Visibility = Visibility.Visible;
                                    CancelFriendRequestButton.Visibility = Visibility.Collapsed;
                                    RejectFriendRequestButton.Visibility = Visibility.Visible;
                                    BackButton1.Visibility = Visibility.Visible;
                                    theButtonsAreShowAndHidden = true;
                                    break;
                                }
                            }
                        }
                    }

                    if (!theButtonsAreShowAndHidden)
                    {
                        foreach (var sentFriendRequestBorder in SentFriendsRequestsStackPanel.Children)
                        {
                            if (sentFriendRequestBorder is FrameworkElement frameworkElement)
                            {
                                if (frameworkElement is Border border)
                                {
                                    StackPanel borderStackPanel = (StackPanel)border.Child;
                                    TextBlock textBlockOfSelectedFriendRequestBorder = (TextBlock)VisualTreeHelper.GetChild(borderStackPanel, 0);

                                    if (long.Parse(textBlockOfSelectedFriendRequestBorder.Text) == long.Parse(IDTextBlock.Text))
                                    {
                                        AcceptFriendRequestButton.Visibility = Visibility.Collapsed;
                                        CancelFriendRequestButton.Visibility = Visibility.Visible;
                                        RejectFriendRequestButton.Visibility = Visibility.Collapsed;
                                        BackButton1.Visibility = Visibility.Visible;
                                        theButtonsAreShowAndHidden = true;
                                        break;
                                    }
                                }
                            }
                        }
                    }

                    FriendsRequestsBorder.Visibility = Visibility.Hidden;
                    FriendRequestDetailsBorder.Visibility = Visibility.Visible;

                    SongManager.Instance.PlayClickSound();
                    friendRequestNonCallbackMethodsClient.Close();
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
        }

        public void ShowUpdatedFriendRequestsList()
        {
            RestartFriendRequestCallbackMethodsClient();

            FriendRequestNonCallbackMethodsClient friendRequestNonCallbackMethodsClient = new FriendRequestNonCallbackMethodsClient();
            friendRequestNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                ReceivedFriendsRequestsStackPanel.Children.Clear();
                SentFriendsRequestsStackPanel.Children.Clear();

                foreach (FriendRequest friendRequest in friendRequestNonCallbackMethodsClient.GetPendientsForAceptationFriendsRequestsByProfile1ID(MainWindow.loggedProfile.IDProfile))
                {
                    Border receivedFriendRequestBorder = new Border
                    {
                        Height = 55,
                        Margin = new Thickness(25, 10, 25, 0),
                        CornerRadius = new CornerRadius(20),
                        Background = new SolidColorBrush(Colors.Black)
                    };

                    StackPanel textAndButtonsStackPanel = new StackPanel
                    {
                        Orientation = Orientation.Horizontal
                    };

                    TextBlock idTextBlock = new TextBlock
                    {
                        Visibility = Visibility.Collapsed,
                        Text = friendRequest.IDFriendRequest.ToString()
                    };

                    TextBlock fromTextBlock = new TextBlock
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        Margin = new Thickness(15, 0, 0, 0),
                        Width = 173,
                        TextWrapping = TextWrapping.Wrap,
                        FontSize = 14,
                        VerticalAlignment = VerticalAlignment.Center,
                        Text = resourceManager.GetString("From", cultureInfo) + ": " + friendRequest.Profile.Player.NickName
                    };

                    TextBlock dateTextBlock = new TextBlock
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        Margin = new Thickness(15, 0, 0, 0),
                        Width = 173,
                        TextWrapping = TextWrapping.Wrap,
                        FontSize = 14,
                        VerticalAlignment = VerticalAlignment.Center,
                        Text = resourceManager.GetString("Date", cultureInfo) + ": " + friendRequest.CreationDate.ToString()
                    };

                    Button detailsButton = new Button
                    {
                        Style = (Style)FindResource("CyanButton"),
                        Height = 35,
                        Width = 59,
                        Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF195388")),
                        Margin = new Thickness(15, 0, 0, 0),
                        Content = resourceManager.GetString("Details", cultureInfo),
                        FontSize = 13
                    };

                    detailsButton.Click += DetailsButtonOnClick;

                    textAndButtonsStackPanel.Children.Add(idTextBlock);
                    textAndButtonsStackPanel.Children.Add(fromTextBlock);
                    textAndButtonsStackPanel.Children.Add(dateTextBlock);
                    textAndButtonsStackPanel.Children.Add(detailsButton);

                    receivedFriendRequestBorder.Child = textAndButtonsStackPanel;

                    ReceivedFriendsRequestsStackPanel.Children.Add(receivedFriendRequestBorder);
                }


                foreach (FriendRequest friendRequest in friendRequestNonCallbackMethodsClient.GetSentAndPendientsForAceptationFriendsRequestsByProfileID(MainWindow.loggedProfile.IDProfile))
                {
                    Border sentFriendRequestBorder = new Border
                    {
                        Height = 55,
                        Margin = new Thickness(25, 10, 25, 0),
                        CornerRadius = new CornerRadius(20),
                        Background = new SolidColorBrush(Colors.Black)
                    };

                    StackPanel textAndButtonsStackPanel = new StackPanel
                    {
                        Orientation = Orientation.Horizontal
                    };

                    TextBlock idTextBlock = new TextBlock
                    {
                        Visibility = Visibility.Collapsed,
                        Text = friendRequest.IDFriendRequest.ToString()
                    };

                    TextBlock forTextBlock = new TextBlock
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        Margin = new Thickness(15, 0, 0, 0),
                        Width = 173,
                        TextWrapping = TextWrapping.Wrap,
                        FontSize = 14,
                        VerticalAlignment = VerticalAlignment.Center,
                        Text = resourceManager.GetString("For", cultureInfo) + ": " + friendRequest.Profile1.Player.NickName
                    };

                    TextBlock dateTextBlock = new TextBlock
                    {
                        Foreground = new SolidColorBrush(Colors.White),
                        Margin = new Thickness(15, 0, 0, 0),
                        Width = 173,
                        TextWrapping = TextWrapping.Wrap,
                        FontSize = 14,
                        VerticalAlignment = VerticalAlignment.Center,
                        Text = resourceManager.GetString("Date", cultureInfo) + ": " + friendRequest.CreationDate.ToString()
                    };

                    Button detailsButton = new Button
                    {
                        Style = (Style)FindResource("CyanButton"),
                        Height = 35,
                        Width = 59,
                        Margin = new Thickness(15, 0, 0, 0),
                        Content = resourceManager.GetString("Details", cultureInfo),
                        FontSize = 13
                    };

                    detailsButton.Click += DetailsButtonOnClick;

                    textAndButtonsStackPanel.Children.Add(idTextBlock);
                    textAndButtonsStackPanel.Children.Add(forTextBlock);
                    textAndButtonsStackPanel.Children.Add(dateTextBlock);
                    textAndButtonsStackPanel.Children.Add(detailsButton);

                    sentFriendRequestBorder.Child = textAndButtonsStackPanel;

                    SentFriendsRequestsStackPanel.Children.Add(sentFriendRequestBorder);
                }

                friendRequestNonCallbackMethodsClient.Close();
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



        #region FriendRequestDetails methods
        private void AcceptFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            mainWindow.RestartProfileCallbackMethodsClient();
            RestartFriendRequestCallbackMethodsClient();

            FriendRequestNonCallbackMethodsClient friendRequestNonCallbackMethodsClient = new FriendRequestNonCallbackMethodsClient();
            friendRequestNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("Are you sure?", "Are you sure you want to accept the friend request?"))
                {
                    friendRequestNonCallbackMethodsClient.AcceptFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestNonCallbackMethodsClient.GetFriendRequestByID(int.Parse(IDFriendRequestLabel.Content.ToString()))));

                    new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Friend request successfully accepted");

                    FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
                    FriendsRequestsBorder.Visibility = Visibility.Visible;

                    SongManager.Instance.PlayClickSound();
                }

                friendRequestNonCallbackMethodsClient.Close();
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

        private void BackButton1OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                ShowUpdatedFriendRequestsList();
                FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
                FriendsRequestsBorder.Visibility = Visibility.Visible;

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

        private void CancelFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendRequestNonCallbackMethodsClient friendRequestNonCallbackMethodsClient = new FriendRequestNonCallbackMethodsClient();
            friendRequestNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("Are you sure?", "Are you sure you want to cancel the friend request sending?"))
                {
                    friendRequestNonCallbackMethodsClient.CancelFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestNonCallbackMethodsClient.GetFriendRequestByID(long.Parse(IDFriendRequestLabel.Content.ToString()))));

                    new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Cancellation of sending friend request made successfully");

                    FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
                    FriendsRequestsBorder.Visibility = Visibility.Visible;

                    SongManager.Instance.PlayClickSound();
                }

                friendRequestNonCallbackMethodsClient.Close();
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

        private void RejectFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendRequestNonCallbackMethodsClient friendRequestNonCallbackMethodsClient = new FriendRequestNonCallbackMethodsClient();
            friendRequestNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("Are you sure?", "Are you sure you want to reject the friend request?"))
                {
                    friendRequestNonCallbackMethodsClient.RejectFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestNonCallbackMethodsClient.GetFriendRequestByID(long.Parse(IDFriendRequestLabel.Content.ToString()))));

                    new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Friend request rejected");

                    FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
                    FriendsRequestsBorder.Visibility = Visibility.Visible;

                    SongManager.Instance.PlayClickSound();
                }

                friendRequestNonCallbackMethodsClient.Close();
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



        #region ConnectedFriendsToInviteToLobbyList
        private void Exit2ButtonOnClick(object sender, RoutedEventArgs e)
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

        private void InviteFriendToTheLobbyButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                mainWindow.RestartProfileCallbackMethodsClient();

                try
                {
                    if (new AlertPopUpGenerator().OpenInternationalizedDesicionPopUp("Are you sure?", "Are you sure you want to invite this friend?"))
                    {
                        StackPanel buttonParent = VisualTreeHelper.GetParent(button) as StackPanel;
                        TextBlock friendNickname = (TextBlock)VisualTreeHelper.GetChild(buttonParent, 1);
                        MainWindow.profileCallbackMethodsClient.InviteFriendToTheLobby(friendNickname.Text);
                        new AlertPopUpGenerator().OpenInternationalizedSuccessPopUp("Success!!!", "Invitation sent successfully!");

                        SongManager.Instance.PlayClickSound();
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
        }

        public void ShowConnectedFriendsListForInviteToLobby()
        {
            mainWindow.RestartProfileCallbackMethodsClient();
            LobbyView.RestartLobbyCallbackMethodsClient();

            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            profileNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);
            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            lobbyNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
                if (LobbyView.lobbyCallbackMethodsClient != null)
                {
                    OnlineFriendsToInviteStackPanel.Children.Clear();

                    foreach (Profile profile in profileNonCallbackMethodsClient.GetFriends(MainWindow.loggedProfile.Player.IDPlayer))
                    {
                        if (!lobbyNonCallbackMethodsClient.IsConnected(profile.Player.NickName))
                        {
                            if (profile.LoginStatus == Enum.GetName(typeof(ProfileLoginStatuses), ProfileLoginStatuses.Logged))
                            {
                                Border friendBorder = new Border
                                {
                                    Height = 55,
                                    Margin = new Thickness(25, 10, 25, 0),
                                    CornerRadius = new CornerRadius(20),
                                    Background = new SolidColorBrush(Colors.Black)
                                };

                                StackPanel textAndButtonsStackPanel = new StackPanel
                                {
                                    Orientation = Orientation.Horizontal
                                };

                                Image friendProfileImage = new Image
                                {
                                    Width = 42,
                                    Height = 42,
                                    Margin = new Thickness(30, 0, 0, 0),
                                    Source = new ImageLoader().GetImageByPlayerNickname(profile.Player.NickName)
                                };

                                TextBlock nicknameTextBlock = new TextBlock
                                {
                                    Foreground = new SolidColorBrush(Colors.White),
                                    Margin = new Thickness(15, 0, 0, 0),
                                    Width = 250,
                                    TextWrapping = TextWrapping.Wrap,
                                    FontSize = 14,
                                    VerticalAlignment = VerticalAlignment.Center,
                                    Text = profile.Player.NickName
                                };

                                Button inviteFriendButton = new Button
                                {
                                    Style = (Style)FindResource("GreenButton"),
                                    Height = 35,
                                    Width = 110,
                                    HorizontalAlignment = HorizontalAlignment.Right,
                                    Content = resourceManager.GetString("Invite", cultureInfo),
                                    FontSize = 13
                                };

                                inviteFriendButton.Click += InviteFriendToTheLobbyButtonOnClick;

                                textAndButtonsStackPanel.Children.Add(friendProfileImage);
                                textAndButtonsStackPanel.Children.Add(nicknameTextBlock);
                                textAndButtonsStackPanel.Children.Add(inviteFriendButton);

                                friendBorder.Child = textAndButtonsStackPanel;
                                OnlineFriendsToInviteStackPanel.Children.Add(friendBorder);
                            }
                        }
                    }
                }

                profileNonCallbackMethodsClient.Close();
                lobbyNonCallbackMethodsClient.Close();
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
        public void ExitFromThisPageForBeingExpeltFromLobbyView()
        {
            LobbyView.RestartLobbyCallbackMethodsClient();

            try
            {
                if (entryToThisPageViaLobbyView)
                {
                    LobbyView.chatCallbackMethodsClient.LeaveChat(MainWindow.loggedProfile.Player.NickName);

                    SongManager.Instance.StopMusic();
                    SongManager.Instance.PlayMainSong();

                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                    navigationService.Navigate(new MenuView(mainWindow));
                    new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Uh oh!", "You have been banned!!!!!");
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

        private ServiceFriendRequestForNonCallbackMethodsReference.FriendRequests FriendRequestToFriendRequestsConverter(FriendRequest friendRequest)
        {
            ServiceFriendRequestForNonCallbackMethodsReference.FriendRequests friendRequests = new ServiceFriendRequestForNonCallbackMethodsReference.FriendRequests
            {
                IDFriendRequest = (int)friendRequest.IDFriendRequest,
                Message = friendRequest.Message,
                CreationDate = friendRequest.CreationDate,
                AceptationStatus = friendRequest.AceptationStatus,
                SendingStatus = friendRequest.SendingStatus
            };

            ServiceFriendRequestForNonCallbackMethodsReference.Players players = new ServiceFriendRequestForNonCallbackMethodsReference.Players
            {
                IDPlayer = friendRequest.Profile.Player.IDPlayer,
                Names = friendRequest.Profile.Player.Names,
                Surnames = friendRequest.Profile.Player.Surnames,
                Email = friendRequest.Profile.Player.Email,
                NickName = friendRequest.Profile.Player.NickName,
                BirthDate = (DateTime)friendRequest.Profile.Player.BirthDate
            };

            ServiceFriendRequestForNonCallbackMethodsReference.Profiles profiles = new ServiceFriendRequestForNonCallbackMethodsReference.Profiles
            {
                IDProfile = friendRequest.Profile.IDProfile,
                Score = friendRequest.Profile.Score,
                LoginStatus = friendRequest.Profile.LoginStatus,
                Players = players
            };

            ServiceFriendRequestForNonCallbackMethodsReference.Players players1 = new ServiceFriendRequestForNonCallbackMethodsReference.Players
            {
                IDPlayer = friendRequest.Profile1.Player.IDPlayer,
                Names = friendRequest.Profile1.Player.Names,
                Surnames = friendRequest.Profile1.Player.Surnames,
                Email = friendRequest.Profile1.Player.Email,
                NickName = friendRequest.Profile1.Player.NickName,
                BirthDate = (DateTime)friendRequest.Profile1.Player.BirthDate
            };

            ServiceFriendRequestForNonCallbackMethodsReference.Profiles profiles1 = new ServiceFriendRequestForNonCallbackMethodsReference.Profiles
            {
                IDProfile = friendRequest.Profile1.IDProfile,
                Score = friendRequest.Profile1.Score,
                LoginStatus = friendRequest.Profile1.LoginStatus,
                Players = players1
            };

            friendRequests.Profiles = profiles;
            friendRequests.Profiles1 = profiles1;

            return friendRequests;
        }

        private string InvalidNicknameInSendFriendRequestTextFieldsTextGenerator()
        {
            string finalText = "";
            string nickNamePattern = "^[A-Za-z0-9\\s'-]{2,50}$";
            Regex nickNameRegex = new Regex(nickNamePattern);
            Match nickNameMatch = nickNameRegex.Match(NicknameTextBox.Text);

            if (!nickNameMatch.Success)
            {
                finalText = resourceManager.GetString("Invalid nickname", cultureInfo) + ": ";
            }

            return finalText;
        }

        public void GoToLobbyView()
        {
            try
            {
                if (!entryToThisPageViaLobbyView)
                {
                    mainWindow.OpenTheLobbyView(this);
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

        public void GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin()
        {
            try
            {
                if (entryToThisPageViaLobbyView)
                {
                    Thread.Sleep(1000);
                    NavigationService navigationService = NavigationService.GetNavigationService(this);
                    navigationService.Navigate(new RandomMultiplayerCrosswordGeneratorView(mainWindow));
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

        public void RestartFriendRequestCallbackMethodsClient()
        {
            if (friendRequestCallbackMethodsClient.State == CommunicationState.Faulted)
            {
                friendRequestCallbackMethodsClient = new FriendRequestCallbackMethodsClient(new InstanceContext(this));
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
        #endregion


        #region Callback method
        public void UpdateFriendsRequestsLists()
        {
            if (PageStateManager.CurrentPage is FriendsView currentPage)
            {
                currentPage.ShowUpdatedFriendRequestsList();
            }
        }
        #endregion
    }
}
