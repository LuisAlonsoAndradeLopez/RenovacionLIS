using System.IO;
using System.Windows.Media.Imaging;
using Client.ServiceProfileForNonCallbackMethodsReference;

namespace Client.AuxiliaryClasses
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

        public BitmapImage GetImageByRenovaciónLISStoragedImagePath(string filePath)
        {
            string incompletePath = Path.GetFullPath(filePath);
            string pathPartToDelete = "bin\\Debug\\";
            string completePath = incompletePath.Replace(pathPartToDelete, "");

            byte[] imageData = File.ReadAllBytes(completePath);

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
