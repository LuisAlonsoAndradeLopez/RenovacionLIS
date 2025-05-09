using System.Runtime.Serialization;

namespace Server.DataContracts
{
    [DataContract]
    public class Level
    {
        [DataMember]
        public int IDPlayer { get; set; }

        [DataMember]
        public string LevelName { get; set; }

        [DataMember]
        public string FirstSurname { get; set; }
    }
}
