using System.Windows.Controls;

namespace Client.Views.UserControls
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
