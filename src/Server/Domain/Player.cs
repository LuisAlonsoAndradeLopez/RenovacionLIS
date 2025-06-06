﻿using System;

namespace Server.Domain
{
    public class Player
    {
        public long IDPlayer { get; set; }
        public string Names { get; set; }
        public string Surnames { get; set; }
        public string NickName { get; set; }
        public Nullable<System.DateTime> BirthDate { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public virtual Profile Profile { get; set; }
    }
}
