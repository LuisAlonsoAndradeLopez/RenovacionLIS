using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using domain;
using System.Windows.Media.Imaging;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;

namespace Renovación_LIS_Client.AuxiliaryClasses
{
    public class ImageLoader
    {
        public BitmapImage GetImageByPlayerNickname(string profileNickname)
        {
            ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();
            string fileName = profileNickname + ".png";
            byte[] imageData = profileNonCallbackMethodsClient.GetImage(fileName);

            if (imageData == null)
            {
                fileName = profileNickname + ".jpg";
                imageData = profileNonCallbackMethodsClient.GetImage(fileName);
            }

            if (imageData == null)
            {
                fileName = profileNickname + ".jpeg";
                imageData = profileNonCallbackMethodsClient.GetImage(fileName);
            }

            profileNonCallbackMethodsClient.Close();

            BitmapImage imageSource = new BitmapImage();

            if (imageData != null)
            {                
                imageSource.BeginInit();
                imageSource.StreamSource = new MemoryStream(imageData);
                imageSource.EndInit();
            }

            return imageSource;
        }
    }
}
