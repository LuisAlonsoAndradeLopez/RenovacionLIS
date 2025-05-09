using System.IO;
using System.Runtime.Serialization;

namespace Server.DataContracts
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
        public DataPlayer Player { get; set; }
    }
}
