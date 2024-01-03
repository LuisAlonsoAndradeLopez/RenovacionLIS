using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.Windows.Controls;
using domain;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MultiplayerCrosswordView.xaml
    /// </summary>
    public partial class MultiplayerCrosswordView : Page
    {
        private readonly MainWindow mainWindow;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        public MultiplayerCrosswordView(MainWindow mainWindow)
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
            //chatClient = new ChatClient(new InstanceContext(this));
            //multiplayerGameClient = new MultiplayerGameClient(new InstanceContext(this));
        }
    }
}
