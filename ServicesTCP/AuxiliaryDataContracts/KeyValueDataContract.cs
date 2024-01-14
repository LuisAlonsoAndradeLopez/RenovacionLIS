using System;
using System.Runtime.Serialization;
using System.Xml.Linq;

namespace ServicesTCP.AuxiliaryContracts
{
    [DataContract]
    public class KeyValueDataContract
    {
        [DataMember]
        public string Key { get; set; }

        [DataMember]
        public string Value { get; set; }


        public override bool Equals(object obj)
        {
            if (obj == null || GetType() != obj.GetType())
            {
                return false;
            }

            KeyValueDataContract other = (KeyValueDataContract)obj;
            return Key == other.Key && Value == other.Value;
        }

        public override int GetHashCode()
        {
            unchecked
            {
                int hash = 17;
                hash = hash * 23 + Key.GetHashCode();
                hash = hash * 23 + (Value?.GetHashCode() ?? 0);
                return hash;
            }
        }
    }

    [DataContract]
    public class DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
    {
        [DataMember]
        public string Key { get; set; }

        [DataMember]
        public int Value { get; set; }
    }
}
