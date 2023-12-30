using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.AuxiliaryContracts
{
    [DataContract]
    public class KeyValueDataContract
    {
        [DataMember]
        public string Key { get; set; }

        [DataMember]
        public string Value { get; set; }
    }

    [DataContract]
    public class KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
    {
        [DataMember]
        public string Key { get; set; }

        [DataMember]
        public IProfileCallback Value { get; set; }
    }
}
