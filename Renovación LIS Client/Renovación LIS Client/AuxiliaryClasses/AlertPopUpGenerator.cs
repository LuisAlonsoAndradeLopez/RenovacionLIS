using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.Text;
using System.Threading.Tasks;
using DomainStatuses;
using Renovación_LIS_Client.ServiceProfileReference;
using System.Windows;

namespace Renovación_LIS_Client.AuxiliaryClasses
{
    public class AlertPopUpGenerator
    {
        public AlertPopUpGenerator() { }

        public void OpenDesicionPopUp()
        {
            //MessageBoxResult result = MessageBox.Show(
            //    resourceManager.GetString("Do you want to exit", cultureInfo),
            //    resourceManager.GetString("What do you want", cultureInfo),
            //    MessageBoxButton.YesNo,
            //    MessageBoxImage.Question
            //);
            //
            //if (result == MessageBoxResult.Yes)
            //{
            //    if (loggedProfile != null)
            //    {
            //        ProfileClient profileClient = new ProfileClient();
            //        profileClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, loggedProfile.IDProfile);
            //
            //        profileClient.Close();
            //    }
            //
            //}
            //else
            //{
            //    e.Cancel = true;
            //}
        }

        public void OpenErrorPopUp()
        {
        }

        public void OpenSuccessPopUp()
        {
        }

        public void OpenWarningPopUp()
        {
        }

    }
}
