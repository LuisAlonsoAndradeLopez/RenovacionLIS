using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using DataContracts;

namespace DataContracts
{
    [DataContract]
    public class Profile
    {
        [DataMember]
        public int IDProfile { get; set; }

        [DataMember]
        public FileAccess ProfilePicture { get; set; }
        
        [DataMember]
        public int Coins { get; set; }

        [DataMember]
        public Player Player { get; set; }
    }
}
