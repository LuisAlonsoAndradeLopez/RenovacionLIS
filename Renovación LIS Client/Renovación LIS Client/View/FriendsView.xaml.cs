using System;
using System.Collections.Generic;
using System.Linq;
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
using Renovación_LIS_Client.ServiceFriendRequestReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para FriendsView.xaml
    /// </summary>
    public partial class FriendsView : Page
    {
        Player loggedPlayer = new Player();

        public FriendsView(Player loggedPlayer)
        {
            InitializeComponent();
            this.loggedPlayer = loggedPlayer;


        }

        private void BackButton(object sender, RoutedEventArgs e)
        {
            FriendsRequestsBorder.Visibility = Visibility.Hidden;
            FriendsBorder.Visibility = Visibility.Visible;
        }

        private void DetailsButton(object sender, RoutedEventArgs e)
        {
            // Your code to handle the button click event goes here
            //MessageBox.Show("Dynamic button was clicked!");
        }

        private void ExitButton(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(loggedPlayer));
        }

        private void InviteFriendButton(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Hidden;
            SendFriendRequestBorder.Visibility = Visibility.Visible;
        }

        private void SeeFriendsRequestButton(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;

            FriendRequestClient friendRequestClient = new FriendRequestClient();
            foreach (FriendRequests friendRequests in friendRequestClient.GetFriendsRequestsByProfile1ID((int)loggedPlayer.IDPlayer))
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

                textAndButtonsStackPanel.Children.Add(fromTextBlock);
                textAndButtonsStackPanel.Children.Add(dateTextBlock);
                textAndButtonsStackPanel.Children.Add(detailsButton);

                receivedFriendRequestBorder.Child = textAndButtonsStackPanel;

                ReceivedFriendsRequestsStackPanel.Children.Add(receivedFriendRequestBorder);
            }


            foreach (FriendRequests friendRequests in friendRequestClient.GetFriendsRequestsByProfileID((int)loggedPlayer.IDPlayer))
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

                textAndButtonsStackPanel.Children.Add(forTextBlock);
                textAndButtonsStackPanel.Children.Add(dateTextBlock);
                textAndButtonsStackPanel.Children.Add(detailsButton);

                sentFriendRequestBorder.Child = textAndButtonsStackPanel;

                SentFriendsRequestsStackPanel.Children.Add(sentFriendRequestBorder);
            }

        }

        private void SendFriendsRequestButton(object sender, RoutedEventArgs e)
        {
            
            Button dynamicButton = new Button
            {
                Content = "Click Me",
                // Set other properties
            };
            OnlineFriendsStackPanel.Children.Add(dynamicButton);
            
        }

        private void CancelButton(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Visible;
            SendFriendRequestBorder.Visibility = Visibility.Hidden;
        }
    }
}
