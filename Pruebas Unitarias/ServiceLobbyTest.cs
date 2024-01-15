using System.Linq;
using System.ServiceModel;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client.ServiceLobbyForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceLobbyForNonCallbackMethodsReference;
using Renovación_LIS_Client.View;

namespace Tests
{
    [TestClass]
    public class ServiceLobbyForCallbackMethodsTest
    {
        private static LobbyCallbackMethodsClient lobbyCallbackMethodsClient;
        private static string successProfileNickname1;
        private static string successProfileNickname2;
        private static string successProfileNickname3;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            lobbyCallbackMethodsClient = new LobbyCallbackMethodsClient(new InstanceContext(new LobbyView()));
            successProfileNickname1 = "Diino15";
            successProfileNickname2 = "FutDiino15";
            successProfileNickname3 = "No me vuelvas a decir bebé";
            lobbyCallbackMethodsClient.Connect(successProfileNickname1);
            lobbyCallbackMethodsClient.Connect(successProfileNickname2);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            lobbyCallbackMethodsClient.Disconnect(successProfileNickname1);
            lobbyCallbackMethodsClient.Disconnect(successProfileNickname2);
        }



        [TestMethod]
        public void BanPlayerTest()
        {
            lobbyCallbackMethodsClient.BanPlayer(successProfileNickname1);
        }

        [TestMethod]
        public void ConnectTest()
        {
            lobbyCallbackMethodsClient.Connect(successProfileNickname3);
        }

        [TestMethod]
        public void DisconnectTest()
        {
            lobbyCallbackMethodsClient.Disconnect(successProfileNickname3);
        }

        [TestMethod]
        public void SetAdminTest()
        {
            lobbyCallbackMethodsClient.SetAdmin(successProfileNickname2);
        }

        [TestMethod]
        public void UnbanPlayerTest()
        {
            lobbyCallbackMethodsClient.UnbanPlayer(successProfileNickname1);
        }
    }


    [TestClass]
    public class ServiceLobbyForNonCallbackMethodsTest
    {
        private static LobbyCallbackMethodsClient lobbyCallbackMethodsClient;
        private static LobbyNonCallbackMethodsClient lobbyNonCallbackMethodsClient;
        private static string successProfileNickname1;
        private static string successProfileNickname2;
        private static string successProfileNickname3;
        private static string failureProfileNickname;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            lobbyCallbackMethodsClient = new LobbyCallbackMethodsClient(new InstanceContext(new LobbyView()));
            lobbyNonCallbackMethodsClient = new LobbyNonCallbackMethodsClient();
            successProfileNickname1 = "Lobo de FUD";
            successProfileNickname2 = "BlackMamba";
            successProfileNickname3 = "Zague";
            failureProfileNickname = "Los Hermanos Xalapitos";
            lobbyCallbackMethodsClient.Connect(successProfileNickname1);
            lobbyCallbackMethodsClient.Connect(successProfileNickname2);
            lobbyCallbackMethodsClient.Connect(successProfileNickname3);
            lobbyCallbackMethodsClient.SetAdmin(successProfileNickname1);
            lobbyCallbackMethodsClient.BanPlayer(successProfileNickname2);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            lobbyCallbackMethodsClient.Disconnect(successProfileNickname1);
            lobbyCallbackMethodsClient.Disconnect(successProfileNickname2);
            lobbyCallbackMethodsClient.Disconnect(successProfileNickname3);
        }


        [TestMethod]
        public void GetAdminTest()
        {         
            Assert.IsTrue(lobbyNonCallbackMethodsClient.GetAdmin() == successProfileNickname1);
        }

        [TestMethod]
        public void GetAdminTestFail()
        {
            Assert.IsTrue(!(lobbyNonCallbackMethodsClient.GetAdmin() == failureProfileNickname));
        }

        [TestMethod]
        public void GetBannedProfilesTest()
        {
            Assert.IsTrue(lobbyNonCallbackMethodsClient.GetBannedProfiles().Contains(successProfileNickname2));
        }

        [TestMethod]
        public void GetBannedProfilesTestFail()
        {
            Assert.IsTrue(!lobbyNonCallbackMethodsClient.GetBannedProfiles().Contains(failureProfileNickname));
        }

        [TestMethod]
        public void GetConnectedProfilesTest()
        {
            var connectedProfiles = lobbyNonCallbackMethodsClient.GetConnectedProfiles();

            Assert.IsTrue(connectedProfiles.Contains(successProfileNickname1));
        }

        [TestMethod]
        public void GetConnectedProfilesTestFail()
        {
            Assert.IsTrue(!lobbyNonCallbackMethodsClient.GetConnectedProfiles().Contains(failureProfileNickname));
        }

        [TestMethod]
        public void IsAdminTest()
        {
            Assert.IsTrue(lobbyNonCallbackMethodsClient.IsAdmin(successProfileNickname1));
        }

        [TestMethod]
        public void IsAdminTestFail()
        {
            Assert.IsTrue(!lobbyNonCallbackMethodsClient.IsAdmin(failureProfileNickname));
        }

        [TestMethod]
        public void IsBannedTest()
        {
            Assert.IsTrue(lobbyNonCallbackMethodsClient.IsBanned(successProfileNickname2));
        }

        [TestMethod]
        public void IsBannedTestFail()
        {
            Assert.IsTrue(!lobbyNonCallbackMethodsClient.IsBanned(failureProfileNickname));
        }

        [TestMethod]
        public void IsConnectedTest()
        {
            Assert.IsTrue(lobbyNonCallbackMethodsClient.IsConnected(successProfileNickname1));
        }   

        [TestMethod]
        public void IsConnectedTestFail()
        {
            Assert.IsTrue(!lobbyNonCallbackMethodsClient.IsConnected(failureProfileNickname));
        }

        [TestMethod]
        public void SetThePlayersAreInGameTest()
        {
            lobbyNonCallbackMethodsClient.SetThePlayersAreInGame();
        }

        [TestMethod]
        public void SetThePlayersAreNotInGameTest()
        {
            lobbyNonCallbackMethodsClient.SetThePlayersAreNotInGame();
        }

        [TestMethod]
        public void ThePlayersAreInGameTest()
        {
            Assert.IsTrue(!lobbyNonCallbackMethodsClient.ThePlayersAreInGame());
        }
    }
}
