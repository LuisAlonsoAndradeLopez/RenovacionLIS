﻿using System;
using System.Globalization;
using System.IO;
using System.Resources;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using Client.AuxiliaryClasses;
using Client.ServiceMultiplayerCrosswordForCallbackMethodsReference;
using Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference;

namespace Client.Views
{
    /// <summary>
    /// Lógica de interacción para RandomMultiplayerCrosswordGeneratorView.xaml
    /// </summary>
    public partial class RandomMultiplayerCrosswordGeneratorView : Page, IMultiplayerCrosswordCallbackMethodsCallback
    {
        #region Atributes
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        public static MultiplayerCrosswordCallbackMethodsClient multiplayerCrosswordCallbackMethodsClient;
        #endregion



        #region Constructors
        public RandomMultiplayerCrosswordGeneratorView()
        {
            multiplayerCrosswordCallbackMethodsClient = new MultiplayerCrosswordCallbackMethodsClient(new InstanceContext(this));
        }

        public RandomMultiplayerCrosswordGeneratorView(MainWindow mainWindow)
        {
            PageStateManager.CurrentPage = this;
            this.mainWindow = mainWindow;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);

            InitializeComponent();

            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();

            if (MainWindow.loggedProfile.Player.NickName == multiplayerCrosswordNonCallbackMethodsClient.GetAdmin())
            {
                multiplayerCrosswordNonCallbackMethodsClient.ClearAnsweredWordsList();
                multiplayerCrosswordNonCallbackMethodsClient.SetTheCrosswordIsNotComplete();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.StartTheCrosswordSelectionAlgorythm();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.ShowTheSelectedCrosswordBorderToConnectedClients();
                RandomMultiplayerCrosswordGeneratorView.multiplayerCrosswordCallbackMethodsClient.OpenTheMultiplayerCrosswordViewToConnectedClients();
            }
        }
        #endregion



        #region Auxiliary methods
        public void ExpeltPlayerToLobbyViewForBeingAlone()
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new LobbyView(mainWindow));

                new AlertPopUpGenerator().OpenInternationalizedWarningPopUp("Uh oh!", "You have been expelt from the game for being the unique player in the game!");
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

        public void GoToMultiplayerCrosswordView()
        {
            try
            {
                NavigationService navigationService = NavigationService.GetNavigationService(this);
                navigationService.Navigate(new MultiplayerCrosswordView(mainWindow));
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

        public static void RestartMultiplayerCrosswordCallbackMethodsClient()
        {
            if (multiplayerCrosswordCallbackMethodsClient.State == CommunicationState.Faulted)
            {
                DependencyObject parent = VisualTreeHelper.GetParent(PageStateManager.CurrentPage);

                while (parent != null && !(parent is RandomMultiplayerCrosswordGeneratorView))
                {
                    parent = VisualTreeHelper.GetParent(parent);
                }

                multiplayerCrosswordCallbackMethodsClient = new MultiplayerCrosswordCallbackMethodsClient(new InstanceContext(parent));
            }
        }

        public void SetVisibleToTheSelectedCrosswordBorder()
        {
            SelectedCrosswordBorder.Visibility = Visibility.Visible;
            MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            switch (multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordNumberSelected())
            {
                case 1:
                    SelectedCrosswordName.Text = "105";
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("Resources\\Images\\105MultiplayerCrosswordSelectionImage.jpeg");
                    break;

                case 2:
                    SelectedCrosswordName.Text = "CC3";
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("Resources\\Images\\CC3MultiplayerCrosswordSelectionImage.jpeg");
                    break;

                case 3:
                    SelectedCrosswordName.Text = resourceManager.GetString("ECONEX bathroom low level", cultureInfo);
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("Resources\\Images\\bañoMultiplayerCrosswordSelectionImage.jpeg");
                    break;

                case 4:
                    SelectedCrosswordName.Text = resourceManager.GetString("Doctorated in CS", cultureInfo);
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("Resources\\Images\\doctoradoEnCienciasDeLaComputaciónMultiplayerCrosswordSelectionImage.jpeg");
                    break;

                case 5:
                    SelectedCrosswordName.Text = resourceManager.GetString("Crystal saloon", cultureInfo);
                    SelectedCrosswordImage.Source = new ImageLoader().GetImageByRenovaciónLISStoragedImagePath("Resources\\Images\\salónCristalMultiplayerCrosswordSelectionImage.jpeg");
                    break;

            }
        }
        #endregion



        #region Callback methods
        public void ExpeltProfileToTheLobbyViewForBeingAlone()
        {
            if (PageStateManager.CurrentPage is RandomMultiplayerCrosswordGeneratorView randomMultiplayerCrosswordGeneratorView)
            {
                randomMultiplayerCrosswordGeneratorView.ExpeltPlayerToLobbyViewForBeingAlone();
            }
            else if (PageStateManager.CurrentPage is MultiplayerCrosswordView multiplayerCrosswordView)
            {
                multiplayerCrosswordView.ExpeltPlayerToLobbyViewForBeingAlone();
            }
        }

        public void UpdateCrossword(string word, string answer)
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateCrosswordCompletition(word, answer);
            }
        }
        public void UpdateGameCountdown(int seconds)
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateGameCountdown(seconds);
            }
        }

        public void UpdateGlobalCountdown(int seconds)
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateGlobalCountdown(seconds);
            }
        }

        public void UpdateProfilesPoints()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateProfilesPointsList();
            }
        }

        public void OpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage()
        {
            if (PageStateManager.CurrentPage is LobbyView lobbyView)
            {
                lobbyView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
            else if (PageStateManager.CurrentPage is BannedPlayersView bannedPlayersView)
            {
                bannedPlayersView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
            else if (PageStateManager.CurrentPage is FriendsView friendsView)
            {
                friendsView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
            else if (PageStateManager.CurrentPage is ChatView chatView)
            {
                chatView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
            else if (PageStateManager.CurrentPage is ConfigurationView configurationView)
            {
                configurationView.GoToRandomMultiplayerCrosswordGeneratorViewWithoutBeTheAdmin();
            }
        }

        public void OpenMultiplayerCrosswordView()
        {
            if (PageStateManager.CurrentPage is RandomMultiplayerCrosswordGeneratorView currentPage)
            {
                currentPage.GoToMultiplayerCrosswordView();
            }
        }

        public void ShowTheSelectedCrosswordBorder()
        {
            if (PageStateManager.CurrentPage is RandomMultiplayerCrosswordGeneratorView currentPage)
            {
                currentPage.SetVisibleToTheSelectedCrosswordBorder();
            }
        }

        public void ShowBlackScreenAnimationOnLobbyViewOrItsChildPages()
        {
            if (PageStateManager.CurrentPage is LobbyView lobbyView)
            {
                lobbyView.StartBlackScreenAnimation();
            }
            else if (PageStateManager.CurrentPage is BannedPlayersView bannedPlayersView)
            {
                bannedPlayersView.StartBlackScreenAnimation();
            }
            else if (PageStateManager.CurrentPage is FriendsView friendsView)
            {
                friendsView.StartBlackScreenAnimation();
            }
            else if (PageStateManager.CurrentPage is ChatView chatView)
            {
                chatView.StartBlackScreenAnimation();
            }
            else if (PageStateManager.CurrentPage is ConfigurationView configurationView)
            {
                configurationView.StartBlackScreenAnimation();
            }
        }

        public void ShowGoText()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateGoText();
            }
        }

        public void ShowTheSelectedCrosswordAndItsQustions()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.ShowTheSelectCrosswordAndItsQuestions();
            }
        }

        public void ShowTimesUpText()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.UpdateTimesUpText();
            }
        }

        public void OpenLobbyView()
        {
            if (PageStateManager.CurrentPage is WinnersView currentPage)
            {
                currentPage.ShowLobbyView();
            }
        }

        public void OpenRandomMultiplayerCrosswordGeneratorView()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.OpenRandomMultiplayerCrosswordGeneratorView();
            }
        }

        public void OpenWinnersView()
        {
            if (PageStateManager.CurrentPage is MultiplayerCrosswordView currentPage)
            {
                currentPage.OpenWinnersView();
            }
        }
        #endregion
    }
}
