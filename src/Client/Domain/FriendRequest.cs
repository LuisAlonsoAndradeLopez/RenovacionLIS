using System;

namespace Client.Domain
{
    public class FriendRequest
    {
        public long IDFriendRequest { get; set; }
        public string Message { get; set; }
        public DateTime CreationDate { get; set; }
        public string SendingStatus { get; set; }
        public string AceptationStatus { get; set; }


        public virtual Profile Profile { get; set; }

        public virtual Profile Profile1 { get; set; }
    }
}
