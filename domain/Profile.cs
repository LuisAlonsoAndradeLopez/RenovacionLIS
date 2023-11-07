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
    public class Profile
    {
        public long IDProfile { get; set; }

        public byte[] ProfilePicture { get; set; }

        public long Coins { get; set; }

        public string LoginStatus { get; set; }

        public Player Player { get; set; }
    }
}
