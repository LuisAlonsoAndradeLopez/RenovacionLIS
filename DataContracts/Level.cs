using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace DataContracts
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
