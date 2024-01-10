using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
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
using Renovación_LIS_Client.AuxiliaryClasses;
using Renovación_LIS_Client.Helpers;
using Renovación_LIS_Client.ServiceLobbyForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para GamemodeSelectionView.xaml
    /// </summary>
    public partial class GamemodeSelectionView : Page
    {
        private readonly MainWindow mainWindow;

        public GamemodeSelectionView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();
        }

        private void SingleplayerButtonOnClick(object sender, RoutedEventArgs e)
        {
            SongManager.Instance.StopMusic();

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new AnimationView(mainWindow));
        }

        private void MultiplayerButtonOnClick(object sender, RoutedEventArgs e)
        {
            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            if (!lobbyNonCallbackMethodsClient.ThePlayersAreInGame())
            {
                if (!lobbyNonCallbackMethodsClient.IsBanned(MainWindow.loggedProfile.Player.NickName))
                {
                    if (lobbyNonCallbackMethodsClient.GetConnectedProfiles().Length < 4)
                    {
                        LobbyView lobbyView = new LobbyView(mainWindow);
                        LobbyView.chatCallbackMethodsClient.JoinChat(MainWindow.loggedProfile.Player.NickName);
                        LobbyView.lobbyCallbackMethodsClient.Connect(MainWindow.loggedProfile.Player.NickName);

                        new RandomMultiplayerCrosswordGeneratorView();
                        RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.Connect(MainWindow.loggedProfile.Player.NickName);

                        SongManager.Instance.StopMusic();
                        SongManager.Instance.PlayMultiplayerSong();

                        NavigationService navigationService = NavigationService.GetNavigationService(this);
                        navigationService.Navigate(lobbyView);
                    }
                    else
                    {
                        new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The lobby is full!!!");
                    }
                }
                else
                {
                    new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "You are banned!!!!!");
                }
            }
            else
            {
                new AlertPopUpGenerator().OpenInternationalizedErrorPopUp("Too Bad!!!", "The game already has started!");
            }

            lobbyNonCallbackMethodsClient.Close();
        }

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MenuView(mainWindow));
        }
    }
}
