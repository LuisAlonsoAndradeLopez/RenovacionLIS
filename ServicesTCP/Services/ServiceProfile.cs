using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using domain;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceProfile : IProfile
    {
        public void UploadImage(ImageData imageData)
        {
            File.WriteAllBytes("uploaded_image.jpg", imageData.ImageBytes);
        }
    }
}
