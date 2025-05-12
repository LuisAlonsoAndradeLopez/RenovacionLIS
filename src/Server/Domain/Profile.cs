namespace Server.Domain
{
    public class Profile
    {
        public long IDProfile { get; set; }

        public long Score { get; set; }

        public string LoginStatus { get; set; }

        public string ProfileImage { get; set; }

        public Player Player { get; set; }
    }
}
