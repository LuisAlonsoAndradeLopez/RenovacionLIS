using System.Runtime.Serialization;

namespace Server.DataContracts
{
    [DataContract]
    public class Crucigram
    {
        [DataMember]
        public int IDCrucigram { get; set; }
    }
}
