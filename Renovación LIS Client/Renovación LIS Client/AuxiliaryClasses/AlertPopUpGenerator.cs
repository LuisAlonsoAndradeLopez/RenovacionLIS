using System;
using System.Globalization;
using System.Resources;
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

        public void OpenErrorPopUp(String header, String message)
        {
            MessageBox.Show(
                message,
                header,
                MessageBoxButton.OK,
                MessageBoxImage.Error
            );
        }


        public bool OpenInternationalizedDesicionPopUp(String header, String message)
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

        public void OpenInternationalizedErrorPopUp(String header, String message)
        {
            MessageBox.Show(
                resourceManager.GetString(message, cultureInfo),
                resourceManager.GetString(header, cultureInfo),
                MessageBoxButton.OK,
                MessageBoxImage.Error
            );
        }

        public void OpenInternationalizedSuccessPopUp(String header, String message)
        {
            MessageBox.Show(
                resourceManager.GetString(message, cultureInfo),
                resourceManager.GetString(header, cultureInfo),
                MessageBoxButton.OK,
                MessageBoxImage.None
            );
        }

        public void OpenInternationalizedWarningPopUp(String header, String message)
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
