using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using domain;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract]
    public interface IProfile
    {
        [OperationContract]
        void UploadImage(ImageData imageData);
    }
}
