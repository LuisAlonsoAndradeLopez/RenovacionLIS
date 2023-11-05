using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;
using domain;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceProfile : IProfile
    {
        public byte[] GetImage(string fileName)
        {
            try
            {
                string serverFolderPath = "C:\\Users\\wmike\\OneDrive\\Documentos\\RenovaciónLISUsersProfilePictures";
                string filePath = Path.Combine(serverFolderPath, fileName);
                byte[] imageData = File.ReadAllBytes(filePath);

                return imageData;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public bool UploadImage(string fileName, byte[] imageData)
        {
            try
            {
                string serverFolderPath = "C:\\Users\\wmike\\OneDrive\\Documentos\\RenovaciónLISUsersProfilePictures";

                string searchString = ".";

                int index = fileName.IndexOf(searchString);
                string fileNameWithoutExtensionToDelete = "";

                if (index != -1)
                {
                    fileNameWithoutExtensionToDelete = fileName.Substring(0, index);
                }

                
                DirectoryInfo directoryInfo = new DirectoryInfo(serverFolderPath);

                if (directoryInfo.Exists)
                {
                    FileInfo[] files = directoryInfo.GetFiles();

                    foreach (FileInfo file in files)
                    {
                        string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(file.Name);

                        if (string.Equals(fileNameWithoutExtension, fileNameWithoutExtensionToDelete, StringComparison.OrdinalIgnoreCase))
                        {
                            file.Delete();
                        }
                    }
                }


                string filePath = Path.Combine(serverFolderPath, fileName);
                File.WriteAllBytes(filePath, imageData);

            }
            catch (Exception ex)
            {
                return false;
            }

            return true;
        }

        List<Profile> IProfile.GetFriends(int profileID)
        {
            throw new NotImplementedException();
        }
    }
}
