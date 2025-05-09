using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace domain
{
    public class FriendRequest
    {
        public long IDFriendRequest { get; set; }
        public string Message { get; set; }
        public System.DateTime CreationDate { get; set; }
        public string SendingStatus { get; set; }
        public string AceptationStatus { get; set; }


        public virtual Profile Profile { get; set; }

        public virtual Profile Profile1 { get; set; }
    }
}
