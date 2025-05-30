﻿using System;
using System.IO;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.Helpers;
using Client.ServiceLobbyForNonCallbackMethodsReference;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para GamemodeSelectionView.xaml
    /// </summary>
    public partial class GamemodeSelectionView : Page
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        #endregion



        #region Constructors
        public GamemodeSelectionView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;

            this.mainWindow = mainWindow;

            InitializeComponent();
        }
        #endregion



        #region Methods for GUIs elements
        private void SingleplayerButtonOnClick(object sender, RoutedEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LevelView(mainWindow));

            SongManager.Instance.PlayClickSound();

            SongManager.Instance.StopMusic();
            SongManager.Instance.PlaySingleplayerSong();
        }

        private void MultiplayerButtonOnClick(object sender, RoutedEventArgs e)
        {
            if (LobbyView.lobbyCallbackMethodsClient != null)
            {
                LobbyView.RestartLobbyCallbackMethodsClient();
            }

            if (LobbyView.chatCallbackMethodsClient != null)
            {
                LobbyView.RestartChatCallbackMethodsClient();
            }

            if (RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient != null)
            {
                RandomMultiplayerCrosswordGeneratorView.RestartMultiplayerCrosswordCallbackMethodsClient();
            }

            LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            lobbyNonCallbackMethodsClient.InnerChannel.OperationTimeout = TimeSpan.FromSeconds(10);

            try
            {
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

                            NavigationService navigationService = NavigationService.GetNavigationService(this);
                            navigationService.Navigate(lobbyView);

                            SongManager.Instance.PlayClickSound();

                            SongManager.Instance.StopMusic();
                            SongManager.Instance.PlayMultiplayerSong();
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

        private void ExitButtonOnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new MenuView(mainWindow));
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
