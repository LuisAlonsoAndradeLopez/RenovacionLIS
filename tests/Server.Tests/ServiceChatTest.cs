using System.Linq;
using System.ServiceModel;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client.ServiceChatForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceChatForNonCallbackMethodsReference;
using Renovación_LIS_Client.View;
using ChatNotCallbackMethodsClient = Renovación_LIS_Client.ServiceChatForNonCallbackMethodsReference.ChatNotCallbackMethodsClient;

namespace Tests
{
    [TestClass]
    public class ServiceChatForCallbackMethodsTest
    {
        private static ChatCallbackMethodsClient chatCallbackMethodsClient;
        private static string successProfileNickname;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            chatCallbackMethodsClient = new ChatCallbackMethodsClient(new InstanceContext(new LobbyView()));
            successProfileNickname = "W92Baj";
        }


        [TestMethod]
        public void JoinChatTest()
        {
            chatCallbackMethodsClient.JoinChat(successProfileNickname);
        }

        [TestMethod]
        public void LeaveChatTest()
        {
            chatCallbackMethodsClient.LeaveChat(successProfileNickname);
        }

        [TestMethod]
        public void SendMessageTest()
        {
            chatCallbackMethodsClient.SendMessage(successProfileNickname, "W92Baj was slain by RubikYT");
        }
    }

    [TestClass]
    public class ServiceChatForNonCallbackMethodsTest
    {
        private static ChatCallbackMethodsClient chatCallbackMethodsClient;
        private static ChatNotCallbackMethodsClient chatNotCallbackMethodsClient;
        private static string successProfileNickname;
        private static string failureProfileNickname;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            chatCallbackMethodsClient = new ChatCallbackMethodsClient(new InstanceContext(new LobbyView()));
            chatNotCallbackMethodsClient = new ChatNotCallbackMethodsClient();
            successProfileNickname = "Usuario 1";
            failureProfileNickname = "Usuario 2";
            chatCallbackMethodsClient.JoinChat(successProfileNickname);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            chatCallbackMethodsClient.LeaveChat(successProfileNickname);
        }


        [TestMethod]
        public void GetConnectedProfilesAndTheirMessagesTest()
        {
            KeyValueDataContract keyValueDataContract = new KeyValueDataContract
            {
                Key = "Chat Server",
                Value = "Usuario 1 has joined to the chat"
            };

            var result = chatNotCallbackMethodsClient.GetConnectedProfilesAndTheirMessages();

            Assert.IsTrue(result.Any(item =>
                item.Key == keyValueDataContract.Key && item.Value == keyValueDataContract.Value));
        }

        [TestMethod]
        public void GetConnectedProfilesAndTheirMessagesTestFail()
        {
            KeyValueDataContract keyValueDataContract = new KeyValueDataContract
            {
                Key = failureProfileNickname,
                Value = "Reprobar lectura"
            };

            Assert.IsTrue(!chatNotCallbackMethodsClient.GetConnectedProfilesAndTheirMessages().Contains(keyValueDataContract));
        }
    }
}
