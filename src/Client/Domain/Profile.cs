namespace domain
{
    public class Profile
    {
        public long IDProfile { get; set; }

        public byte[] ProfilePicture { get; set; }

        public long Score { get; set; }

        public string LoginStatus { get; set; }

        public Player Player { get; set; }
    }
}
