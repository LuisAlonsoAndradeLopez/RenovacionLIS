using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace domain
{
    public class Player
    {
        public int IDPlayer { get; set; }

        public string Name { get; set; }

        public string FirstSurname { get; set; }

        public string SecondSurname { get; set; }

        public string NickName { get; set; }

        public DateTime BirthDate { get; set; }

        public int BirthDay { get; set; }

        public string BirthMonth { get; set; }

        public int BirthYear { get; set; }

        public string MainEmail { get; set; }

        public string AlternateEmail { get; set; }

        public string Password { get; set; }

        public Profile Profile { get; set; }
    }
}
