using System;
using System.Globalization;
using System.Resources;
using System.Windows;
using System.Windows.Navigation;
using System.Windows.Controls;
using Client.Views;

namespace Client.AuxiliaryClasses
{
    public class AlertPopUpGenerator
    {
        private readonly CultureInfo cultureInfo;
        private readonly ResourceManager resourceManager;

        public AlertPopUpGenerator()
        {
            cultureInfo = CultureInfo.CurrentUICulture;
            resourceManager = new ResourceManager("Client.Properties.Resources", typeof(MainWindow).Assembly);
        }

        public void OpenInternationalizedInGameConnectionErrorPopUp(Page page)
        {
            MessageBox.Show(
                resourceManager.GetString("Connection lost, you will be redirected to the start page", cultureInfo),
                resourceManager.GetString("Too Bad!!!", cultureInfo),
                MessageBoxButton.OK,
                MessageBoxImage.Error
            );
            NavigationService navigationService = NavigationService.GetNavigationService(page);
            navigationService.Navigate(new StartView());
        }

        public void OpenInternationalizedNotInGameConnectionErrorPopUp()
        {
            MessageBox.Show(
                resourceManager.GetString("Connection lost, try again later", cultureInfo),
                resourceManager.GetString("Too Bad!!!", cultureInfo),
                MessageBoxButton.OK,
                MessageBoxImage.Error
            );
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
