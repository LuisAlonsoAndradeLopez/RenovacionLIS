using System;
using System.Globalization;
using System.IO;
using System.Resources;
using System.ServiceModel;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using domain;
using DomainStatuses;
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceFriendRequestForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceFriendRequestReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileReference;
using Button = System.Windows.Controls.Button;
using MessageBox = System.Windows.MessageBox;
using Orientation = System.Windows.Controls.Orientation;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para FriendsView.xaml
    /// </summary>
    public partial class FriendsView : Page, IFriendRequestForCallbackMethodsCallback
    {
        private MainWindow mainWindow;
        private Profile loggedProfile;
        private ChatClient chatClient; //Only to use when the access is by LobbyView
        private ProfileForCallbackMethodsClient profileForCallbackMethodsClient;
        private FriendRequestForCallbackMethodsClient friendRequestForCallbackMethodsClient;
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        //Constructores
        public FriendsView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            
            PageStateManager.CurrentPage = this;

            friendRequestForCallbackMethodsClient = new FriendRequestForCallbackMethodsClient(new InstanceContext(this));
            friendRequestForCallbackMethodsClient.Connect(loggedProfile.Player.NickName);

            ShowUpdatedFriendsList();
        }

        public FriendsView(MainWindow mainWindow, Profile loggedProfile, ProfileForCallbackMethodsClient profileForCallbackMethodsClient, ChatClient chatClient)
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);

            PageStateManager.CurrentPage = this;

            friendRequestForCallbackMethodsClient = new FriendRequestForCallbackMethodsClient(new InstanceContext(this));
            friendRequestForCallbackMethodsClient.Connect(loggedProfile.Player.NickName);

            this.chatClient = chatClient;

            FriendsBorder.Visibility = Visibility.Hidden;
            ConnectedFriendsForInviteBorder.Visibility = Visibility.Visible;
            ShowConnectedFriendsListForInviteToLobby();
        }


        //Start of FriendList methods
        private void CancelFriendshipButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                if (new AlertPopUpGenerator().OpenDesicionPopUp("Are you sure?", "Are you sure you want to cancel the friendship?"))
                {
                    ServiceProfileReference.Players players = new ServiceProfileReference.Players();
                    players.IDPlayer = loggedProfile.Player.IDPlayer;
                    players.Names = loggedProfile.Player.Names;
                    players.Surnames = loggedProfile.Player.Surnames;
                    players.Email = loggedProfile.Player.Email;
                    players.NickName = loggedProfile.Player.NickName;
                    players.BirthDate = (DateTime)loggedProfile.Player.BirthDate;
                    players.Password = loggedProfile.Player.Password;

                    ServiceProfileReference.Profiles profiles = new ServiceProfileReference.Profiles();
                    profiles.IDProfile = loggedProfile.IDProfile;
                    profiles.Coins = loggedProfile.Coins;
                    profiles.LoginStatus = loggedProfile.LoginStatus;
                    profiles.Players = players;

                    ProfileClient profileClient = new ProfileClient();
                    StackPanel parent = VisualTreeHelper.GetParent(button) as StackPanel;
                    TextBlock IDTextBlock = (TextBlock)VisualTreeHelper.GetChild(parent, 0);
                    Profile profile1 = profileClient.GetProfileByPlayerID(long.Parse(IDTextBlock.Text));

                    ServiceProfileReference.Players players1 = new ServiceProfileReference.Players();
                    players1.IDPlayer = profile1.Player.IDPlayer;
                    players1.Names = profile1.Player.Names;
                    players1.Surnames = profile1.Player.Surnames;
                    players1.Email = profile1.Player.Email;
                    players1.NickName = profile1.Player.NickName;
                    players1.BirthDate = (DateTime)profile1.Player.BirthDate;
                    players1.Password = profile1.Player.Password;

                    ServiceProfileReference.Profiles profiles1 = new ServiceProfileReference.Profiles();
                    profiles1.IDProfile = profile1.IDProfile;
                    profiles1.Coins = profile1.Coins;
                    profiles1.LoginStatus = profile1.LoginStatus;
                    profiles1.Players = players1;

                    profileClient.CancelFriendship(
                        profiles,
                        profiles1
                    );

                    new AlertPopUpGenerator().OpenSuccessPopUp("Success!!!", "Friendship cancellation made successfully");

                    profileClient.Close();
                }
            }
        }

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            friendRequestForCallbackMethodsClient.Disconnect(loggedProfile.Player.NickName);

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow, loggedProfile, profileForCallbackMethodsClient));
        }

        private void InviteFriendButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Hidden;
            SendFriendRequestBorder.Visibility = Visibility.Visible;
        }

        private void SeeFriendsRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            ShowUpdatedFriendRequestsList();
            FriendsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;
        }

        public void ShowUpdatedFriendsList()
        {
            OnlineFriendsStackPanel.Children.Clear();
            OfflineFriendsStackPanel.Children.Clear();

            ProfileClient profileClient = new ProfileClient();
            foreach (Profile profile in profileClient.GetFriends(loggedProfile.Player.IDPlayer))
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

            profileClient.Close();
        }
        //End of FriendList methods


        //Start of SendFriendRequest methods
        private void CancelButtonOnClick(object sender, RoutedEventArgs e)
        {
            ShowUpdatedFriendsList();
            SendFriendRequestBorder.Visibility = Visibility.Hidden;
            FriendsBorder.Visibility = Visibility.Visible;
        }

        private void SendFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (invalidNicknameInSendFriendRequestTextFieldsTextGenerator() == "")
            {
                if (new TextRange(MessageRichTextBox.Document.ContentStart, MessageRichTextBox.Document.ContentEnd).Text.Length <= 100)
                {
                    ProfileClient profileClient = new ProfileClient();

                    if (profileClient.GetProfileByPlayerNickname(NicknameTextBox.Text) != null)
                    {
                        if (NicknameTextBox.Text != loggedProfile.Player.NickName)
                        {
                            FriendRequestClient friendRequestClient = new FriendRequestClient();

                            if (!friendRequestClient.TheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile(
                                loggedProfile.IDProfile,
                                profileClient.GetProfileByPlayerNickname(NicknameTextBox.Text).IDProfile
                                ))
                            {
                                bool theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile = false;
                                foreach (Profile p in profileClient.GetFriends(loggedProfile.IDProfile))
                                {
                                    if (profileClient.GetProfileByPlayerNickname(NicknameTextBox.Text).Player.NickName == p.Player.NickName)
                                    {
                                        theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile = true;
                                        break;
                                    }
                                }

                                if (!theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile)
                                {
                                    if (!friendRequestClient.TheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile(
                                        loggedProfile.IDProfile,
                                        profileClient.GetProfileByPlayerNickname(NicknameTextBox.Text).IDProfile
                                        ))
                                    {
                                        ServiceFriendRequestReference.FriendRequests friendRequests = new ServiceFriendRequestReference.FriendRequests();
                                        friendRequests.Message = new TextRange(MessageRichTextBox.Document.ContentStart, MessageRichTextBox.Document.ContentEnd).Text;
                                        friendRequests.CreationDate = DateTime.Now;
                                        friendRequests.AceptationStatus = Enum.GetName(typeof(FriendRequestAceptationStatuses), FriendRequestAceptationStatuses.Pendient);
                                        friendRequests.SendingStatus = Enum.GetName(typeof(FriendRequestSendingStatuses), FriendRequestSendingStatuses.Sent);

                                        ServiceFriendRequestReference.Players players = new ServiceFriendRequestReference.Players();
                                        players.IDPlayer = loggedProfile.Player.IDPlayer;
                                        players.Names = loggedProfile.Player.Names;
                                        players.Surnames = loggedProfile.Player.Surnames;
                                        players.Email = loggedProfile.Player.Email;
                                        players.NickName = loggedProfile.Player.NickName;
                                        players.BirthDate = (DateTime)loggedProfile.Player.BirthDate;
                                        players.Password = loggedProfile.Player.Password;

                                        ServiceFriendRequestReference.Profiles profiles = new ServiceFriendRequestReference.Profiles();
                                        profiles.IDProfile = loggedProfile.IDProfile;
                                        profiles.Coins = loggedProfile.Coins;
                                        profiles.LoginStatus = loggedProfile.LoginStatus;
                                        profiles.Players = players;

                                        Profile profile1 = profileClient.GetProfileByPlayerNickname(NicknameTextBox.Text);

                                        ServiceFriendRequestReference.Players players1 = new ServiceFriendRequestReference.Players();
                                        players1.IDPlayer = profile1.Player.IDPlayer;
                                        players1.Names = profile1.Player.Names;
                                        players1.Surnames = profile1.Player.Surnames;
                                        players1.Email = profile1.Player.Email;
                                        players1.NickName = profile1.Player.NickName;
                                        players1.BirthDate = (DateTime)profile1.Player.BirthDate;
                                        players1.Password = profile1.Player.Password;

                                        ServiceFriendRequestReference.Profiles profiles1 = new ServiceFriendRequestReference.Profiles();
                                        profiles1.IDProfile = profile1.IDProfile;
                                        profiles1.Coins = profile1.Coins;
                                        profiles1.LoginStatus = profile1.LoginStatus;
                                        profiles1.Players = players1;

                                        friendRequests.Profiles = profiles;
                                        friendRequests.Profiles1 = profiles1;

                                        friendRequestClient.AddFriendRequest(friendRequests);

                                        new AlertPopUpGenerator().OpenSuccessPopUp("Success!!!", "Friend request sent succesfully");

                                        ShowUpdatedFriendsList();
                                        SendFriendRequestBorder.Visibility = Visibility.Hidden;
                                        FriendsBorder.Visibility = Visibility.Visible;

                                    }
                                    else
                                    {
                                        new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The user you want to send a friendrequest already has sent a friendrequest to you");
                                    }
                                }
                                else
                                {
                                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "You cant't send a friend request to this user because is already your friend");
                                }
                            }
                            else
                            {
                                new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "You already has sent a friend request to this user");
                            }
                            friendRequestClient.Close();

                        }
                        else
                        {
                            new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "You can't send a friend request to yourself");
                        }

                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The user you want to sent a friend request doesn't exists");
                    }

                    profileClient.Close();

                }
                else
                {
                    new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", "The message shouldn't have more than 100 characters");
                }
            }
            else
            {
                new AlertPopUpGenerator().OpenErrorPopUp("Too Bad!!!", invalidNicknameInSendFriendRequestTextFieldsTextGenerator());
            }

        }
        //End of SendFriendRequest methods


        //Start of FriendRequestsList methods
        private void BackButtonOnClick(object sender, RoutedEventArgs e)
        {
            ShowUpdatedFriendsList();
            FriendsRequestsBorder.Visibility = Visibility.Hidden;
            FriendsBorder.Visibility = Visibility.Visible;
        }

        private void DetailsButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendsRequestsBorder.Visibility = Visibility.Hidden;
            FriendRequestDetailsBorder.Visibility = Visibility.Visible;

            if (sender is Button button)
            {
                StackPanel parent = VisualTreeHelper.GetParent(button) as StackPanel;

                TextBlock IDTextBlock = (TextBlock)VisualTreeHelper.GetChild(parent, 0);

                FriendRequestClient friendRequestClient = new FriendRequestClient();

                FriendRequest friendRequest = new FriendRequest();
                friendRequest = friendRequestClient.GetFriendRequestByID(long.Parse(IDTextBlock.Text));

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

                friendRequestClient.Close();
            }
        }

        public void ShowUpdatedFriendRequestsList()
        {
            ReceivedFriendsRequestsStackPanel.Children.Clear();
            SentFriendsRequestsStackPanel.Children.Clear();

            FriendRequestClient friendRequestClient = new FriendRequestClient();
            FriendRequestForCallbackMethodsClient friendRequestForCallbackMethodsClient = new FriendRequestForCallbackMethodsClient(new InstanceContext(this));
            foreach (FriendRequest friendRequest in friendRequestClient.GetPendientsForAceptationFriendsRequestsByProfile1ID(loggedProfile.IDProfile))
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


            foreach (FriendRequest friendRequest in friendRequestClient.GetSentAndPendientsForAceptationFriendsRequestsByProfileID(loggedProfile.IDProfile))
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

            friendRequestClient.Close();
        }
        //End of FriendRequestsList methods


        //Start of FriendRequestDetails methods
        private void AcceptFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (new AlertPopUpGenerator().OpenDesicionPopUp("Are you sure?", "Are you sure you want to accept the friend request?"))
            {
                FriendRequestClient friendRequestClient = new FriendRequestClient();
                friendRequestClient.AcceptFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestClient.GetFriendRequestByID(int.Parse(IDFriendRequestLabel.Content.ToString()))));

                new AlertPopUpGenerator().OpenSuccessPopUp("Success!!!", "Friend request successfully accepted");
        
                FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
                FriendsRequestsBorder.Visibility = Visibility.Visible;
                friendRequestClient.Close();
            }
        }

        private void BackButton1OnClick(object sender, RoutedEventArgs e)
        {
            ShowUpdatedFriendRequestsList();
            FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;
        }

        private void CancelFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (new AlertPopUpGenerator().OpenDesicionPopUp("Are you sure?", "Are you sure you want to cancel the friend request sending?"))
            {
                FriendRequestClient friendRequestClient = new FriendRequestClient();
                friendRequestClient.CancelFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestClient.GetFriendRequestByID(long.Parse(IDFriendRequestLabel.Content.ToString()))));

                new AlertPopUpGenerator().OpenSuccessPopUp("Success!!!", "Cancellation of sending friend request made successfully");

                FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
                FriendsRequestsBorder.Visibility = Visibility.Visible;
                friendRequestClient.Close();
            }
        }

        private void RejectFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (new AlertPopUpGenerator().OpenDesicionPopUp("Are you sure?", "Are you sure you want to reject the friend request?"))
            {
                FriendRequestClient friendRequestClient = new FriendRequestClient();
                friendRequestClient.RejectFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestClient.GetFriendRequestByID(long.Parse(IDFriendRequestLabel.Content.ToString()))));

                new AlertPopUpGenerator().OpenSuccessPopUp("Success!!!", "Friend request rejected");

                FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
                FriendsRequestsBorder.Visibility = Visibility.Visible;
                friendRequestClient.Close();
            }
        }
        //End of FriendRequestDetails methods


        //Start of ConnectedFriendsToInviteToLobbyList
        private void Exit2ButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LobbyView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient));
        }

        private void InviteFriendToTheLobbyButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                if (new AlertPopUpGenerator().OpenDesicionPopUp("Are you sure?", "Are you sure you want to invite this friend?"))
                {
                    StackPanel buttonParent = VisualTreeHelper.GetParent(button) as StackPanel;
                    TextBlock friendNickname = (TextBlock)VisualTreeHelper.GetChild(buttonParent, 1);
                    profileForCallbackMethodsClient.InviteFriendToTheLobby(friendNickname.Text);
                    new AlertPopUpGenerator().OpenSuccessPopUp("Success!!!", "Invitation sent successfully!");
                }
            }
        }

        public void ShowConnectedFriendsListForInviteToLobby()
        {
            OnlineFriendsToInviteStackPanel.Children.Clear();

            ProfileClient profileClient = new ProfileClient();
            foreach (Profile profile in profileClient.GetFriends(loggedProfile.Player.IDPlayer))
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

            profileClient.Close();
        }
        //End of ConnectedFriendsToInviteList


        //Start of auxiliary methods
        private ServiceFriendRequestReference.FriendRequests FriendRequestToFriendRequestsConverter(FriendRequest friendRequest)
        {
            ServiceFriendRequestReference.FriendRequests friendRequests = new ServiceFriendRequestReference.FriendRequests();

            friendRequests.IDFriendRequest = (int)friendRequest.IDFriendRequest;
            friendRequests.Message = friendRequest.Message;
            friendRequests.CreationDate = friendRequest.CreationDate;
            friendRequests.AceptationStatus = friendRequest.AceptationStatus;
            friendRequests.SendingStatus = friendRequest.SendingStatus;

            ServiceFriendRequestReference.Players players = new ServiceFriendRequestReference.Players();
            players.IDPlayer = friendRequest.Profile.Player.IDPlayer;
            players.Names = friendRequest.Profile.Player.Names;
            players.Surnames = friendRequest.Profile.Player.Surnames;
            players.Email = friendRequest.Profile.Player.Email;
            players.NickName = friendRequest.Profile.Player.NickName;
            players.BirthDate = (DateTime)friendRequest.Profile.Player.BirthDate;

            ServiceFriendRequestReference.Profiles profiles = new ServiceFriendRequestReference.Profiles();
            profiles.IDProfile = friendRequest.Profile.IDProfile;
            profiles.Coins = friendRequest.Profile.Coins;
            profiles.LoginStatus = friendRequest.Profile.LoginStatus;
            profiles.Players = players;

            ServiceFriendRequestReference.Players players1 = new ServiceFriendRequestReference.Players();
            players1.IDPlayer = friendRequest.Profile1.Player.IDPlayer;
            players1.Names = friendRequest.Profile1.Player.Names;
            players1.Surnames = friendRequest.Profile1.Player.Surnames;
            players1.Email = friendRequest.Profile1.Player.Email;
            players1.NickName = friendRequest.Profile1.Player.NickName;
            players1.BirthDate = (DateTime)friendRequest.Profile1.Player.BirthDate;

            ServiceFriendRequestReference.Profiles profiles1 = new ServiceFriendRequestReference.Profiles();
            profiles1.IDProfile = friendRequest.Profile1.IDProfile;
            profiles1.Coins = friendRequest.Profile1.Coins;
            profiles1.LoginStatus = friendRequest.Profile1.LoginStatus;
            profiles1.Players = players1;

            friendRequests.Profiles = profiles;
            friendRequests.Profiles1 = profiles1;

            return friendRequests;
        }

        private String invalidNicknameInSendFriendRequestTextFieldsTextGenerator()
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
            mainWindow.OpenTheLobbyView(this);
        }
        //End of auxiliary methods


        //The callback method
        public void UpdateFriendsRequestsLists()
        {
            if (PageStateManager.CurrentPage is FriendsView currentPage)
            {                
                currentPage.ShowUpdatedFriendRequestsList();
            }
        }
    }
}
