//using Renovación_LIS_Client.ServicePlayerReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
//using System.ServiceModel;
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

namespace Renovación_LIS_Client.View
{
    /// <summary>
    /// Lógica de interacción para CreateAccountView.xaml
    /// </summary>
    public partial class CreateAccountView : Page
    {
        public CreateAccountView()
        {
            InitializeComponent();
        }

        private void CreateAccount(object sender, RoutedEventArgs e)
        {
            /*string Name = GetName.Text;
            string LastName = GetLastName.Text;
            string Email = GetEmail.Text;
            string Nickname = GetNickName.Text;
            int BirthDay = int.Parse(GetBirthday.Text);

            SecureString securePassword = GetPassword.SecurePassword;
            string Password = new System.Net.NetworkCredential(string.Empty, securePassword).Password;

            SecureString secureConfirmPassword = GetConfirmPassword.SecurePassword;
            string ConfirmPassword = new System.Net.NetworkCredential(string.Empty, secureConfirmPassword).Password;

            Players players = new Players();
            players.Name = Name;
            players.FirstSurname = LastName;
            players.MainEmail = Email;
            players.NickName = Nickname;
            players.BirthDay = BirthDay;
            players.Password = Password; 
            
            try
            {
                InstanceContext context = new InstanceContext(new CallbackHandler());

                ServicePlayerReference.PlayerClient client = new ServicePlayerReference.PlayerClient(context);

                client.AddPlayer( players);
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.StackTrace);

            }*/
            

        }

        //[CallbackBehavior(UseSynchronizationContext = false)]
        /*class CallbackHandler : ServicePlayerReference.IPlayerCallback
        {
            public void Response(String response)
            {
                Console.WriteLine(response);
            }
        }*/

        private void GoLoginButton(object sender, MouseButtonEventArgs e)
        {
            NavigationService navigationService = NavigationService.GetNavigationService(this);
            navigationService.Navigate(new LoginView());
        }
    }

}
