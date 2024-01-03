using System;
using System.Globalization;
using System.Resources;
using System.Windows.Controls;
using System.Windows.Navigation;
using domain;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para RandomMultiplayerCrosswordGeneratorView.xaml
    /// </summary>
    public partial class RandomMultiplayerCrosswordGeneratorView : Page
    {
        //private readonly MainWindow mainWindow;
        //private readonly ChatClient chatClient;
        //private readonly Profile MainWindow.loggedProfile;
        //private readonly MultiplayerGameClient multiplayerGameClient;
        //private readonly ProfileForCallbackMethodsClient profileForCallbackMethodsClient;
        //private readonly CultureInfo cultureInfo;
        //private readonly ResourceManager resourceManager;
        //
        //private int crosswordNumberSelected;
        //private int crosswordPlayed;

        public RandomMultiplayerCrosswordGeneratorView(MainWindow mainWindow)
        {
            //InitializeComponent();
            //this.mainWindow = mainWindow;
            //this.MainWindow.loggedProfile = MainWindow.loggedProfile;
            //this.profileForCallbackMethodsClient = profileForCallbackMethodsClient;
            //
            //cultureInfo = CultureInfo.CurrentUICulture;
            //resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            //PageStateManager.CurrentPage = this;
            //
            //this.chatClient = chatClient;
            //this.multiplayerGameClient = multiplayerGameClient;
            //
            //while (true)
            //{
            //    crosswordNumberSelected = new Random().Next(1, 21);
            //    //Show the level image with this number
            //    if (new Random().Next(0, 2) == 1)
            //    {
            //        break;
            //    }
            //}
            //
            //NavigationService navigationService = NavigationService.GetNavigationService(this);
            //navigationService.Navigate(new MultiplayerCrosswordView(mainWindow, MainWindow.loggedProfile);
        }

        public RandomMultiplayerCrosswordGeneratorView(MainWindow mainWindow, int crosswordNumberSelected, int crosswordPlayed)
        {
            //PageStateManager.CurrentPage = this;
            //
            //this.mainWindow = mainWindow;
            //this.MainWindow.loggedProfile = MainWindow.loggedProfile;
            //this.crosswordNumberSelected = crosswordNumberSelected;
            //this.crosswordPlayed = crosswordPlayed;
            //
            //cultureInfo = CultureInfo.CurrentUICulture;
            //resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            //
            //InitializeComponent();
            //
            //while (true)
            //{
            //    crosswordNumberSelected = new Random().Next(1, 21);
            //    //Show the level image with this number
            //    if (new Random().Next(0, 2) == 1)
            //    {
            //        break;
            //    }
            //}
            //
            //NavigationService navigationService = NavigationService.GetNavigationService(this);
            //navigationService.Navigate(new MultiplayerCrosswordView(mainWindow, MainWindow.loggedProfile, crosswordNumberSelected, crosswordPlayed));
        }
    }
}
