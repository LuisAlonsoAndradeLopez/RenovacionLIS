using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.ServiceModel;
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
using Renovación_LIS_Client.ServiceChatReference;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordReference;
using Renovación_LIS_Client.ServiceMultiplayerGameReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para RandomMultiplayerCrosswordGeneratorView.xaml
    /// </summary>
    public partial class RandomMultiplayerCrosswordGeneratorView : Page
    {
        private readonly MainWindow mainWindow;
        private readonly ChatClient chatClient;
        private readonly Profile loggedProfile;
        private readonly MultiplayerGameClient multiplayerGameClient;
        private readonly ProfileForCallbackMethodsClient profileForCallbackMethodsClient;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        private int crosswordNumberSelected;
        private int crosswordPlayed;

        public RandomMultiplayerCrosswordGeneratorView
        (
            MainWindow mainWindow, 
            Profile loggedProfile, 
            ProfileForCallbackMethodsClient profileForCallbackMethodsClient, 
            ChatClient chatClient, 
            MultiplayerGameClient multiplayerGameClient,
            MultiplayerCrosswordClient multiplayerCrosswordClient,
        )
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            PageStateManager.CurrentPage = this;

            this.chatClient = chatClient;
            this.multiplayerGameClient = multiplayerGameClient;

            while (true)
            {
                crosswordNumberSelected = new Random().Next(1, 21);
                //Show the level image with this number
                if (new Random().Next(0, 2) == 1)
                {
                    break;
                }
            }

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MultiplayerCrosswordView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient, multiplayerGameClient, multiplayerCrosswordClient);
        }

        public RandomMultiplayerCrosswordGeneratorView
        (
            MainWindow mainWindow,
            Profile loggedProfile,
            ProfileForCallbackMethodsClient profileForCallbackMethodsClient,
            ChatClient chatClient,
            MultiplayerGameClient multiplayerGameClient,
            MultiplayerCrosswordClient multiplayerCrosswordClient,
            int crosswordNumberSelected,
            int crosswordPlayed
        )
        {
            InitializeComponent();
            this.mainWindow = mainWindow;
            this.loggedProfile = loggedProfile;
            this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;

            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            PageStateManager.CurrentPage = this;

            this.chatClient = chatClient;
            this.multiplayerGameClient = multiplayerGameClient;
            this.crosswordNumberSelected = crosswordNumberSelected;
            this.crosswordPlayed = crosswordPlayed;

            while (true)
            {
                crosswordNumberSelected = new Random().Next(1, 21);
                //Show the level image with this number
                if (new Random().Next(0, 2) == 1)
                {
                    break;
                }
            }

            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new MultiplayerCrosswordView(mainWindow, loggedProfile, profileForCallbackMethodsClient, chatClient, multiplayerGameClient, multiplayerCrosswordClient);
        }
    }
}
