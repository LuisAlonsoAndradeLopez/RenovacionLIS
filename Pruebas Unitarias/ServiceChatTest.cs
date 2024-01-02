using Microsoft.VisualStudio.TestTools.UnitTesting;
using ServicesTCP.Services;

namespace Tests
{
    [TestClass]
    public class ServiceChatTest
    {
        // This method will be called once before any test method in the class is executed
        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {

            // Your setup code here
        }

        // This method will be called once after all test methods in the class have been executed
        [ClassCleanup]
        public static void ClassCleanup()
        {
            // Your cleanup code here
        }


        [TestMethod]
        public void JoinChatTest()
        {
            string profileNicknameToTheTest = "Augusto ponche de león";

            ServiceChat serviceChat = new ServiceChat();
            serviceChat.JoinChat(profileNicknameToTheTest);

            Assert.IsTrue(serviceChat.TheProfileIsConnected(profileNicknameToTheTest));
        }

        [TestMethod]
        public void JoinChatTestFail()
        {
            string profileNicknameToTheTest = "Paeoidos123";
            string profileNicknameToTheTestFail = "W29Baj";

            ServiceChat serviceChat = new ServiceChat();
            serviceChat.JoinChat(profileNicknameToTheTest);

            Assert.IsFalse(serviceChat.TheProfileIsConnected(profileNicknameToTheTestFail));
            //Assert.AreEqual();
            //bool result = Program.JoinChat();
        }

        [TestMethod]
        public void LeaveChatTest()
        {
            string profileNicknameToTheTest = "Augusto ponche de león";

            ServiceChat serviceChat = new ServiceChat();
            serviceChat.LeaveChat(profileNicknameToTheTest);

            Assert.IsFalse(serviceChat.TheProfileIsConnected(profileNicknameToTheTest));
        }

        [TestMethod]
        public void LeaveChatTestFail()
        {
            string profileNicknameToTheTest = "Augusto ponche de león";

            ServiceChat serviceChat = new ServiceChat();
            serviceChat.LeaveChat(profileNicknameToTheTest);

            Assert.IsTrue(serviceChat.TheProfileIsConnected(profileNicknameToTheTest));
        }

        [TestMethod]
        public void SendMessageTest()
        {
            
        }

        [TestMethod]
        public void SendMessageTestFail()
        {

        }

        [TestMethod]
        public void GetConnectedProfilesAndTheirMessagesTest()
        {
            //Assert.AreEqual(, );
        }

        [TestMethod]
        public void GetConnectedProfilesAndTheirMessagesTestFail()
        {

        }
    }
}
