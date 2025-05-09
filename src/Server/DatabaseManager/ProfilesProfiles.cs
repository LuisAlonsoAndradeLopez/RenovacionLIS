using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseManager
{
    [DataContract]
    public class ProfilesProfiles
    {
        [DataMember]
        public long ProfilesId { get; set; }
        [DataMember]
        public Profiles Profiles{ get; set; }

        [DataMember]
        public long Profiles1Id { get; set; }
        [DataMember]
        public Profiles Profiles1 { get; set; }
    }
}
