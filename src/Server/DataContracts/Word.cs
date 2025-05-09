using System.Runtime.Serialization;

namespace Server.DataContracts
{
    [DataContract]
    public class Word
    {
        public int IDWord { get; set; }

        public string WordLine { get; set; }

        public string Description { get; set; }
    }
}
