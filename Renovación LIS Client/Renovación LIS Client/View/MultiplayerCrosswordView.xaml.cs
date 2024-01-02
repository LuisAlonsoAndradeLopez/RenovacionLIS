using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
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
using Renovación_LIS_Client.ServiceMultiplayerGameReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para MultiplayerCrosswordView.xaml
    /// </summary>
    public partial class MultiplayerCrosswordView : Page
    {
        private readonly MainWindow mainWindow;
        private readonly ChatClient chatClient;
        private readonly Profile loggedProfile;
        private readonly MultiplayerGameClient multiplayerGameClient;
        private readonly ProfileForCallbackMethodsClient profileForCallbackMethodsClient;
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        public MultiplayerCrosswordView()
        {
            InitializeComponent();
        }
    }
}
