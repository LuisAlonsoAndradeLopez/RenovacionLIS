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

        private int crosswordNumberSelected;
        private int crosswordsPlayed;

        public MultiplayerCrosswordView(MainWindow mainWindow, int crosswordNumberSelected, int crosswordsPlayed)
        {
            //InitializeComponent();
            //this.mainWindow = mainWindow;
            //
            //cultureInfo = CultureInfo.CurrentUICulture;
            //resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
            //PageStateManager.CurrentPage = this;
        }
    }
}
