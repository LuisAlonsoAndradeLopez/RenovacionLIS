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
        private CultureInfo cultureInfo;
        private ResourceManager resourceManager;

        public AlertPopUpGenerator()
        {
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Renovación_LIS_Client.Properties.Resources", typeof(MainWindow).Assembly);
        }

        public bool OpenDesicionPopUp(String header, String message)
        {
            MessageBoxResult result = MessageBox.Show(
                resourceManager.GetString(message, cultureInfo),
                resourceManager.GetString(header, cultureInfo),
                MessageBoxButton.YesNo,
                MessageBoxImage.Question
            );
            
            if (result == MessageBoxResult.Yes)
            {
                return true;         
            }     
            
            return false;
        }

        public void OpenErrorPopUp(String header, String message)
        {
            MessageBox.Show(
                resourceManager.GetString(message, cultureInfo),
                resourceManager.GetString(header, cultureInfo),
                MessageBoxButton.OK,
                MessageBoxImage.Error
            );
        }

        public void OpenSuccessPopUp(String header, String message)
        {
            MessageBox.Show(
                resourceManager.GetString(message, cultureInfo),
                resourceManager.GetString(header, cultureInfo),
                MessageBoxButton.OK,
                MessageBoxImage.None
            );
        }

        public void OpenWarningPopUp(String header, String message)
        {
            MessageBox.Show(
                resourceManager.GetString(message, cultureInfo),
                resourceManager.GetString(header, cultureInfo),
                MessageBoxButton.OK,
                MessageBoxImage.Warning
            );
        }
    }
}
