using Microsoft.VisualStudio.TestTools.UnitTesting;

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
            //Assert.AreEqual();
            //bool result = Program.JoinChat();
        }

        [TestMethod]
        public void JoinChatTestFail()
        {
            //Assert.AreEqual();
            //bool result = Program.JoinChat();
        }

        [TestMethod]
        public void LeaveChatTest()
        {

        }

        [TestMethod]
        public void LeaveChatTestFail()
        {

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
            
        }

        [TestMethod]
        public void GetConnectedProfilesAndTheirMessagesTestFail()
        {

        }
    }
}
