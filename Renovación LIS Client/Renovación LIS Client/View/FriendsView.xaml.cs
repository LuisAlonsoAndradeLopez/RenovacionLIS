using System;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using domain;
using DomainStatuses;
using Renovación_LIS_Client.ServiceFriendRequestReference;
using Renovación_LIS_Client.ServiceProfileReference;
using Button = System.Windows.Controls.Button;
using MessageBox = System.Windows.MessageBox;
using Orientation = System.Windows.Controls.Orientation;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para FriendsView.xaml
    /// </summary>
    public partial class FriendsView : Page
    {
        Profile loggedProfile = new Profile();

        public FriendsView(Profile loggedProfile)
        {
            InitializeComponent();
            this.loggedProfile = loggedProfile;

            ShowUpdatedFriendsList();
        }
        private void AcceptFriendRequestButton(object sender, RoutedEventArgs e)
        {
            
        }

        private void BackButton(object sender, RoutedEventArgs e)
        {
            FriendsRequestsBorder.Visibility = Visibility.Hidden;
            FriendsBorder.Visibility = Visibility.Visible;
        }

        private void CancelFriendRequestButton(object sender, RoutedEventArgs e)
        {
            
        }

        private void DetailsButton(object sender, RoutedEventArgs e)
        {
            FriendsRequestsBorder.Visibility = Visibility.Hidden;
            FriendRequestDetailsBorder.Visibility = Visibility.Visible;

            if(sender is Button button)
            {
                StackPanel parent = VisualTreeHelper.GetParent(button) as StackPanel;

                int childCount = VisualTreeHelper.GetChildrenCount(parent);

                TextBlock IDTextBlock = (TextBlock)VisualTreeHelper.GetChild(parent, 1);

                FriendRequestClient friendRequestClient = new FriendRequestClient();
                FriendRequest friendRequest = new FriendRequest();
                friendRequest = friendRequestClient.GetFriendsRequestsByID();

                NicknameLabel.Content = friendRequest.Profiles.Player.NickName;
                CreationDateLabel.Content = friendRequest.CreationDate;
                MessageTextBlock.Text = friendRequest.Message;
                    

                //TODO Add buttons to accept or reject da friendrequest
            }


        }

        private void ExitButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(loggedProfile));
        }

        private void InviteFriendButton(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Hidden;
            SendFriendRequestBorder.Visibility = Visibility.Visible;
        }

        private void RejectFriendRequestButton(object sender, RoutedEventArgs e)
        {

        }

        private void SeeFriendsRequestButton(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;

            FriendRequestClient friendRequestClient = new FriendRequestClient();
            foreach (ServiceFriendRequestReference.FriendRequests friendRequests in friendRequestClient.GetPendientsForAceptationFriendsRequestsByProfile1ID((int)loggedPlayer.IDPlayer))
            {
                Border receivedFriendRequestBorder = new Border
                {
                    Height = 55,
                    Margin = new Thickness(25,10,25,0),
                    CornerRadius = new CornerRadius(20),
                    Background = new SolidColorBrush(Colors.Black)
                };

                StackPanel textAndButtonsStackPanel = new StackPanel
                {
                    Orientation = Orientation.Horizontal
                };

                TextBlock idTextBlock = new TextBlock
                {
                    FontSize = 0,
                    Text = friendRequests.IDFriendRequest.ToString()
                };

                TextBlock fromTextBlock = new TextBlock
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    Margin = new Thickness(15,0,0,0),
                    Width = 173,
                    TextWrapping = TextWrapping.Wrap,
                    FontSize = 14,
                    VerticalAlignment = VerticalAlignment.Center,
                    Text = "De: " + friendRequests.Profiles.Players.NickName
                };

                TextBlock dateTextBlock = new TextBlock
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    Margin = new Thickness(15, 0, 0, 0),
                    Width = 173,
                    TextWrapping = TextWrapping.Wrap,
                    FontSize = 14,
                    VerticalAlignment = VerticalAlignment.Center,
                    Text = "Fecha: " + friendRequests.CreationDate.ToString()
                };

                Button detailsButton = new Button
                {
                    Height = 35,
                    Width = 59,
                    Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF195388")),
                    Margin = new Thickness(15,0,0,0),
                    FontSize = 13
                };

                detailsButton.Click += DetailsButton;

                textAndButtonsStackPanel.Children.Add(idTextBlock);
                textAndButtonsStackPanel.Children.Add(fromTextBlock);
                textAndButtonsStackPanel.Children.Add(dateTextBlock);
                textAndButtonsStackPanel.Children.Add(detailsButton);

                receivedFriendRequestBorder.Child = textAndButtonsStackPanel;

                ReceivedFriendsRequestsStackPanel.Children.Add(receivedFriendRequestBorder);
            }


            foreach (ServiceFriendRequestReference.FriendRequests friendRequests in friendRequestClient.GetSendedFriendsRequestsByProfileID((int)loggedProfile.Player.IDPlayer))
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
                    FontSize = 0,
                    Text = friendRequests.IDFriendRequest.ToString()
                };

                TextBlock forTextBlock = new TextBlock
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    Margin = new Thickness(15, 0, 0, 0),
                    Width = 173,
                    TextWrapping = TextWrapping.Wrap,
                    FontSize = 14,
                    VerticalAlignment = VerticalAlignment.Center,
                    Text = "Para: " + friendRequests.Profiles1.Players.NickName
                };

                TextBlock dateTextBlock = new TextBlock
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    Margin = new Thickness(15, 0, 0, 0),
                    Width = 173,
                    TextWrapping = TextWrapping.Wrap,
                    FontSize = 14,
                    VerticalAlignment = VerticalAlignment.Center,
                    Text = "Fecha: " + friendRequests.CreationDate.ToString()
                };

                Button detailsButton = new Button
                {
                    Height = 35,
                    Width = 59,
                    Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF195388")),
                    Margin = new Thickness(15, 0, 0, 0),
                    FontSize = 13
                };

                detailsButton.Click += DetailsButton;

                textAndButtonsStackPanel.Children.Add(idTextBlock);
                textAndButtonsStackPanel.Children.Add(forTextBlock);
                textAndButtonsStackPanel.Children.Add(dateTextBlock);
                textAndButtonsStackPanel.Children.Add(detailsButton);

                sentFriendRequestBorder.Child = textAndButtonsStackPanel;

                SentFriendsRequestsStackPanel.Children.Add(sentFriendRequestBorder);
            }

        }

        private void SendFriendRequestButton(object sender, RoutedEventArgs e)
        {
            //TODO: If con regex para nickname y mensaje

            FriendRequestClient friendRequestClient = new FriendRequestClient();
            ProfileClient profileClient = new ProfileClient();
            
            ServiceFriendRequestReference.FriendRequests friendRequests = new ServiceFriendRequestReference.FriendRequests();
            friendRequests.Message = new TextRange(MessageRichTextBox.Document.ContentStart, MessageRichTextBox.Document.ContentEnd).Text;
            friendRequests.CreationDate = DateTime.Now;
            friendRequests.Status = FriendRequestStatuses.Sent.ToString();

            ServiceFriendRequestReference.Players players = new ServiceFriendRequestReference.Players();
            players.IDPlayer = loggedProfile.Player.IDPlayer;
            players.Names = loggedProfile.Player.Names;
            players.Surnames = loggedProfile.Player.Surnames;
            players.Email = loggedProfile.Player.Email;
            players.NickName= loggedProfile.Player.NickName;
            players.BirthDate = (DateTime)loggedProfile.Player.BirthDate;

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

            ServiceFriendRequestReference.Profiles profiles1 = new ServiceFriendRequestReference.Profiles();
            profiles1.IDProfile = profile1.IDProfile;
            profiles1.Coins = profile1.Coins;
            profiles1.LoginStatus = profile1.LoginStatus;
            profiles1.Players = players;

            friendRequests.Profiles = profiles;
            friendRequests.Profiles1 = profiles1;
            
            friendRequestClient.AddFriendRequest(friendRequests);
            
            MessageBox.Show("Solicitud de Amigo creado exitosamente", "Alert", MessageBoxButton.OK, MessageBoxImage.None);
            
            SendFriendRequestBorder.Visibility = Visibility.Hidden;
            FriendsBorder.Visibility = Visibility.Visible;

        }

        private void CancelButton(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Visible;
            SendFriendRequestBorder.Visibility = Visibility.Hidden;
        }

        private void ShowUpdatedFriendsList()
        {
            ProfileClient profileClient = new ProfileClient();
            foreach (Profile profile in profileClient.GetFriends((int)loggedProfile.Player.IDPlayer))
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

                BitmapImage imageSource = new BitmapImage();
                byte[] imageData = GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions(profile.Player.NickName);

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
                    Width = 42,
                    Height = 42,
                    Margin = new Thickness(30, 0, 0, 0),
                    Source = imageSource
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

                textAndButtonsStackPanel.Children.Add(friendProfileImage);
                textAndButtonsStackPanel.Children.Add(nicknameTextBlock);

                friendBorder.Child = textAndButtonsStackPanel;

                if (profile.LoginStatus == ProfileLoginStatuses.Logged.ToString())
                {
                    OnlineFriendsStackPanel.Children.Add(friendBorder);
                }

                if (profile.LoginStatus == ProfileLoginStatuses.NotLogged.ToString())
                {
                    OfflineFriendsStackPanel.Children.Add(friendBorder);
                }
                
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

            return imageData;
        }
    }
}
