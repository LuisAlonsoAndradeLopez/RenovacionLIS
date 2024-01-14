using System.ServiceModel;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client.ServiceChatForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceChatForNonCallbackMethodsReference;
using Renovación_LIS_Client.View;

namespace Tests
{
    [TestClass]
    public class ServiceChatForCallbackMethodsTest
    {
        private readonly ChatCallbackMethodsClient chatCallbackMethodsClient = new ChatCallbackMethodsClient(new InstanceContext(new LobbyView()));

        [TestMethod]
        public void JoinChatTest()
        {
            chatCallbackMethodsClient.JoinChat("W92Baj");
        }

        [TestMethod]
        public void LeaveChatTest()
        {
            chatCallbackMethodsClient.LeaveChat("W92Baj");
        }

        [TestMethod]
        public void SendMessageTest()
        {
            chatCallbackMethodsClient.SendMessage("W92Baj", "W92Baj was slain by RubikYT");
        }
    }

    [TestClass]
    public class ServiceChatForNonCallbackMethodsTest
    {
        private readonly ChatNotCallbackMethodsClient chatNotCallbackMethodsClient = new ChatNotCallbackMethodsClient();

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            ChatCallbackMethodsClient chatCallbackMethodsClient = new ChatCallbackMethodsClient(new InstanceContext(new LobbyView()));
            chatCallbackMethodsClient.JoinChat("Usuario 1");
            chatCallbackMethodsClient.JoinChat("Usuario 2");
            chatCallbackMethodsClient.JoinChat("Usuario 3");
        }


        [TestMethod]
        public void GetConnectedProfilesAndTheirMessagesTest()
        {
            bool dataFound = false;

            KeyValueDataContract keyValueDataContract = new KeyValueDataContract
            {
                Key = "Chat Server",
                Value = "Usuario 1 has joined to the chat"
            };

            foreach (var dataSelected in chatNotCallbackMethodsClient.GetConnectedProfilesAndTheirMessages())
            {
                if (dataSelected.Key == keyValueDataContract.Key &&
                    dataSelected.Value == keyValueDataContract.Value)
                {
                    dataFound = true;
                    break;
                }
                
            }

            Assert.IsTrue(dataFound);
        }

        [TestMethod]
        public void GetConnectedProfilesAndTheirMessagesTestFail()
        {
            bool dataFound = false;

            KeyValueDataContract keyValueDataContract = new KeyValueDataContract
            {
                Key = "TheLuigi534",
                Value = "Reprobar lectura"
            };

            foreach (var dataSelected in chatNotCallbackMethodsClient.GetConnectedProfilesAndTheirMessages())
            {
                if (dataSelected.Key == keyValueDataContract.Key &&
                    dataSelected.Value == keyValueDataContract.Value)
                {
                    dataFound = true;
                    break;
                }

            }

            Assert.IsTrue(!dataFound);
        }
    }

}
