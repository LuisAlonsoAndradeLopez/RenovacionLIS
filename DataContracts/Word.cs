using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace DataContracts
{
    [DataContract]
    public class Word
    {
        public int IDWord { get; set; }

        public string WordLine { get; set; }

        public string Description { get; set; }
    }
}
