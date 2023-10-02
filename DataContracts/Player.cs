using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace DataContracts
{
    [DataContract]
    public class Player
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
