using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ServicesTCP.ServiceContracts
{ 
    [ServiceContract]
    public interface IWord
    {
        [OperationContract]
        string[] GetStrings();
    }
}
