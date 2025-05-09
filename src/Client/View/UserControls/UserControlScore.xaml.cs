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

namespace Renovación_LIS_Client.View.UserControls
{
    /// <summary>
    /// Lógica de interacción para UserControlScore.xaml
    /// </summary>
    public partial class UserControlScore : UserControl
    {
        public UserControlScore(string username, int score)
        {
            InitializeComponent();
            Txt_UserName.Text = username;
            Txt_Score.Text = score.ToString();
        }
    }
}
