using System;
using System.Runtime.Serialization;

namespace Server.DataContracts
{
    [DataContract]
    public class DataPlayer
    {
        [DataMember]
        public int IDPlayer { get; set; }

        [DataMember]
        public string Name { get; set; }

        [DataMember]
        public string FirstSurname { get; set; }

        [DataMember]
        public string SecondSurname { get; set; }

        [DataMember]
        public string NickName { get; set; }

        [DataMember]
        public DateTime BirthDate { get; set; }

        [DataMember]
        public int BirthDay { get; set; }

        [DataMember]
        public string BirthMonth { get; set; }

        [DataMember]
        public int BirthYear { get; set; }

        [DataMember]
        public string MainEmail { get; set; }

        [DataMember]
        public string AlternateEmail { get; set; }

        [DataMember]
        public string Password { get; set; }

        [DataMember]
        public Profile Profile { get; set; }
    }
}
