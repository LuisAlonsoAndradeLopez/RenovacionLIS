using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace domain
{
    public class Player
    {
        public long IDPlayer { get; set; }
        public string Name { get; set; }
        public string FirstSurname { get; set; }
        public string NickName { get; set; }
        public Nullable<System.DateTime> BirthDate { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public virtual Profile Profile { get; set; }
    }
}
