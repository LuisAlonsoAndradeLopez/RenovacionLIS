using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace domain
{
    public class Profile
    {
        public int IDProfile { get; set; }

        public FileAccess ProfilePicture { get; set; }

        public int Coins { get; set; }

        public Player Player { get; set; }
    }
}
