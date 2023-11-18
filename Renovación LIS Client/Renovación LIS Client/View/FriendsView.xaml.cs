using System;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Resources;
using System.Runtime.InteropServices;
using System.ServiceModel;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Threading;
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
    //public partial class FriendsView : Page, IFriendRequestCallback
    public partial class FriendsView : Page
    {
        //TODO
        //Puto cierre de procesos que no desloguea usuarios (Pendiente)
        //Callback para las listas de usuarios y friend requests (En Construcción)
        //Cambiar AffFriendship de ServiceProfile (Preguntar al revolucionario)
        //Actualizar instantaneamente al aceptar, cancelar o rechazar invitaciones de amistad (Callback para todo)
        //Si te rechazan la solicitud de amistad, ya no te debería aparecer en la lista (Hecho)
        //Internacionalizar todititito (Pendiente)
        //Cerrar todas las conexiones (Pendiente)
        //Bug que no se elimina la solicitud de mensaje al cancelarlo por el emisor (Es bug?)
        //Cancelar Amistad (Pendiente)

        /*
        private MainWindow mainWindow;
        private Profile loggedProfile;
        private CultureInfo culture;
        private ResourceManager resourceManager;

        public FriendsView(MainWindow mainWindow, Profile loggedProfile)
        {
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            culture = CultureInfo.CurrentCulture;

            //Assembly assembly = Assembly.LoadFrom(new String());

            resourceManager = new ResourceManager("Resources", typeof(MainWindow).Assembly);

            // Specify the folder where the .resources files are located
            


            InitializeComponent();
            ShowUpdatedFriendsList();
        }
        private void AcceptFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendRequestClient friendRequestClient = new FriendRequestClient(new InstanceContext(this));
            friendRequestClient.AcceptFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestClient.GetFriendRequestByID(int.Parse(IDFriendRequestLabel.Content.ToString()))));

            MessageBox.Show("Solicitud aceptada exitosamente", "Alert", MessageBoxButton.OK, MessageBoxImage.None);

            FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;
            friendRequestClient.Close();
        }

        private void BackButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendsRequestsBorder.Visibility = Visibility.Hidden;
            FriendsBorder.Visibility = Visibility.Visible;
        }

        private void BackButton1OnClick(object sender, RoutedEventArgs e)
        {
            FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;
        }

        private void CancelButtonOnClick(object sender, RoutedEventArgs e)
        {
            SendFriendRequestBorder.Visibility = Visibility.Hidden;
            FriendsBorder.Visibility = Visibility.Visible;
        }

        private void CancelFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(IDFriendRequestLabel.Content.ToString(), "Alert", MessageBoxButton.OK, MessageBoxImage.None);
            FriendRequestClient friendRequestClient = new FriendRequestClient(new InstanceContext(this));
            friendRequestClient.CancelFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestClient.GetFriendRequestByID(long.Parse(IDFriendRequestLabel.Content.ToString()))));

            MessageBox.Show("Cancelación del envio de solicitud realizado exitosamente", "Alert", MessageBoxButton.OK, MessageBoxImage.None);

            FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;
            friendRequestClient.Close();
        }

        private void CancelFriendshipButtonOnClick(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(IDFriendRequestLabel.Content.ToString(), "Alert", MessageBoxButton.OK, MessageBoxImage.None);
            ProfileClient profileClient = new ProfileClient(new InstanceContext(this));
            //profileClient.CancelFriendship();

            MessageBox.Show("Cancelación del envio de solicitud realizado exitosamente", "Alert", MessageBoxButton.OK, MessageBoxImage.None);

            profileClient.Close();
        }

        private void DetailsButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendsRequestsBorder.Visibility = Visibility.Hidden;
            FriendRequestDetailsBorder.Visibility = Visibility.Visible;

            if(sender is Button button)
            {
                StackPanel parent = VisualTreeHelper.GetParent(button) as StackPanel;

                TextBlock IDTextBlock = (TextBlock)VisualTreeHelper.GetChild(parent, 0);

                FriendRequestClient friendRequestClient = new FriendRequestClient(new InstanceContext(this));
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

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow, loggedProfile));
        }

        private void InviteFriendButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Hidden;
            SendFriendRequestBorder.Visibility = Visibility.Visible;
        }

        private void RejectFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendRequestClient friendRequestClient = new FriendRequestClient(new InstanceContext(this));
            friendRequestClient.RejectFriendRequest(FriendRequestToFriendRequestsConverter(friendRequestClient.GetFriendRequestByID(long.Parse(IDFriendRequestLabel.Content.ToString()))));

            MessageBox.Show("Invitación Rechazada", "Alert", MessageBoxButton.OK, MessageBoxImage.None);

            FriendRequestDetailsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;
            friendRequestClient.Close();
        }

        private void SeeFriendsRequestButtonOnClick(object sender, RoutedEventArgs e)
        {
            FriendsBorder.Visibility = Visibility.Hidden;
            FriendsRequestsBorder.Visibility = Visibility.Visible;

            ShowUpdatedFriendRequestsList();
        }

        private void SendFriendRequestButtonOnClick(object sender, RoutedEventArgs e)
        {            
            if (invalidNicknameInSendFriendRequestTextFieldsTextGenerator() == "")
            {
                if (new TextRange(MessageRichTextBox.Document.ContentStart, MessageRichTextBox.Document.ContentEnd).Text.Length <= 100)
                {
                    ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback(null)));
                    if (profileClient.GetProfileByPlayerNickname(NicknameTextBox.Text) != null)
                    {
                        if (NicknameTextBox.Text != loggedProfile.Player.NickName)
                        {
                            ServiceFriendRequestCallback callback = new ServiceFriendRequestCallback(this);
                            InstanceContext context = new InstanceContext(callback);
                            FriendRequestClient friendRequestClient = new FriendRequestClient(context);


                            if (!friendRequestClient.TheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile(
                                loggedProfile.IDProfile,
                                profileClient.GetProfileByPlayerNickname(NicknameTextBox.Text).IDProfile)                                
                                )
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
                                    players.NickName= loggedProfile.Player.NickName;
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

                                    MessageBox.Show("Solicitud de Amigo creado exitosamente", "Alert", MessageBoxButton.OK, MessageBoxImage.None);
                                    
                                    SendFriendRequestBorder.Visibility = Visibility.Hidden;
                                    FriendsBorder.Visibility = Visibility.Visible;

                                }
                                else
                                {
                                    MessageBox.Show("No puedes mandar solicitud de amistad a este usuario por que ya es tu amigo", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                                }

                            }
                            else
                            {
                                MessageBox.Show("Ya le has mandado solicitud de amistad a este usuario", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                            }
                            friendRequestClient.Close();

                        }
                        else
                        {
                            MessageBox.Show("No te puedes mandar una solicitud de amistad a ti mismo", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                        }

                    }
                    else
                    {
                        MessageBox.Show("El usuario al que le quieres mandar solicitud de amistad no existe", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    profileClient.Close();

                }
                else
                {
                    MessageBox.Show("El mensaje no debe de tener más de 100 carácteres", "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show(invalidNicknameInSendFriendRequestTextFieldsTextGenerator(), "Alert", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }

        public void ShowUpdatedFriendsList()
        {
            if (!Dispatcher.CheckAccess())
            {
                Dispatcher.BeginInvoke(new Action(() => ShowUpdatedFriendsList()), DispatcherPriority.Background);
                return;
            }
            
            OnlineFriendsStackPanel.Children.Clear();
            OfflineFriendsStackPanel.Children.Clear();
            

            ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback(this)));
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

                Button cancelFriendshipButton = new Button
                {
                    Height = 35,
                    Width = 59,
                    Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF195388")),
                    Margin = new Thickness(0, 0, 10, 0),
                    HorizontalAlignment = HorizontalAlignment.Right,
                    Content = resourceManager.GetString("Cancel_Friendship"),
                    FontSize = 13
                };

                cancelFriendshipButton.Click += CancelFriendshipButtonOnClick;

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

        public void ShowUpdatedFriendRequestsList()
        {
            if (!Dispatcher.CheckAccess())
            {
                Dispatcher.BeginInvoke(new Action(() => ShowUpdatedFriendRequestsList()), DispatcherPriority.Background);
                return;
            }

            ReceivedFriendsRequestsStackPanel.Children.Clear();
            SentFriendsRequestsStackPanel.Children.Clear();
            
            FriendRequestClient friendRequestClient = new FriendRequestClient(new InstanceContext(this));
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
                    Text = "De: " + friendRequest.Profile.Player.NickName
                };

                TextBlock dateTextBlock = new TextBlock
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    Margin = new Thickness(15, 0, 0, 0),
                    Width = 173,
                    TextWrapping = TextWrapping.Wrap,
                    FontSize = 14,
                    VerticalAlignment = VerticalAlignment.Center,
                    Text = "Fecha: " + friendRequest.CreationDate.ToString()
                };

                Button detailsButton = new Button
                {
                    Height = 35,
                    Width = 59,
                    Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF195388")),
                    Margin = new Thickness(15, 0, 0, 0),
                    Content = "Detalles",
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
                    Text = "Para: " + friendRequest.Profile1.Player.NickName
                };

                TextBlock dateTextBlock = new TextBlock
                {
                    Foreground = new SolidColorBrush(Colors.White),
                    Margin = new Thickness(15, 0, 0, 0),
                    Width = 173,
                    TextWrapping = TextWrapping.Wrap,
                    FontSize = 14,
                    VerticalAlignment = VerticalAlignment.Center,
                    Text = "Fecha: " + friendRequest.CreationDate.ToString()
                };

                Button detailsButton = new Button
                {
                    Height = 35,
                    Width = 59,
                    Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF195388")),
                    Margin = new Thickness(15, 0, 0, 0),
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


        private byte[] GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions(string profileNickname)
        {
            ProfileClient profileClient = new ProfileClient(new InstanceContext(new ServiceProfileCallback(null)));
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
                finalText = "El Nickname no es válido";
            }

            return finalText;
        }

        public void UpdateFriendsRequestsLists()
        {
            ShowUpdatedFriendRequestsList();
        }
        */
    }
}
