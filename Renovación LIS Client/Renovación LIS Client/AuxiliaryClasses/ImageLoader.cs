using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using domain;
using System.Windows.Media.Imaging;
using Renovación_LIS_Client.ServiceProfileReference;

namespace Renovación_LIS_Client.AuxiliaryClasses
{
    public class ImageLoader
    {
        public BitmapImage GetImageByPlayerNickname(string profileNickname)
        {
            ProfileClient profileClient = new ProfileClient();
            string fileName = profileNickname + ".png";
            byte[] imageData = profileClient.GetImage(fileName);

            if (imageData == null)
            {
                fileName = profileNickname + ".jpg";
                imageData = profileClient.GetImage(fileName);
            }

            if (imageData == null)
            {
                fileName = profileNickname + ".jpeg";
                imageData = profileClient.GetImage(fileName);
            }

            profileClient.Close();

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
