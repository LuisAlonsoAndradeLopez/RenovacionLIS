using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DataContracts;

namespace DataContracts
{
    [ServiceContract]
    public interface IProfile
    {
        [OperationContract]
        string[] GetStrings();
    }
}
