using System;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client.ServicePlayerReference;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;
using Players = Renovación_LIS_Client.ServicePlayerReference.Players;

namespace Tests
{
    [TestClass]
    public class ServicePlayerTest
    {
        private PlayerClient playerClient;
        private ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient;
        private Players successPlayer;
        private Players failurePlayer;
        private Players auxiliaryPlayer;

        [TestInitialize]
        public void TestInitialize()
        {
            playerClient = new PlayerClient();
            profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();

            successPlayer = new Players
            {
                Names = "Usuario 1",
                Surnames = "",
                NickName = "Usuario 1",
                BirthDate = DateTime.Now,
                Email = "caffeinated555@gmail.com",
                Password = "Papadopulos#111"
            };

            failurePlayer = new Players
            {
                Names = "Usuario 2",
                Surnames = "",
                NickName = "Usuario 2",
                BirthDate = DateTime.Now,
                Email = "caffeinated556@gmail.com",
                Password = "Papadopulos#222"
            };

            auxiliaryPlayer = new Players
            {
                Names = "Usuario 3",
                Surnames = "",
                NickName = "Usuario 3",
                BirthDate = DateTime.Now,
                Email = "caffeinated557@gmail.com",
                Password = "Papadopulos#333"
            };

            successPlayer.IDPlayer = playerClient.AddPlayer(successPlayer);
        }

        [TestCleanup]
        public void TestCleanup()
        {
            //playerClient.DeletePlayer(successPlayer.NickName);
            //playerClient.DeletePlayer(auxiliaryPlayer.NickName);
            //profileNonCallbackMethodsClient.DeleteProfile(successPlayer.IDPlayer);
            //profileNonCallbackMethodsClient.DeleteProfile(auxiliaryPlayer.IDPlayer);
        }

        [TestMethod]
        public void AddPlayerTest()
        {
            Assert.IsTrue(playerClient.AddPlayer(auxiliaryPlayer) > 0);
        }

        [TestMethod]
        public void GetPlayersTest()
        {
            var result = playerClient.GetPlayers();
            Assert.IsTrue(result.Contains(successPlayer));
        }

        [TestMethod]

        public void GetPlayersTestFail()
        {
            var result = playerClient.GetPlayers();
            Assert.IsTrue(!result.Contains(failurePlayer));
        }

        [TestMethod]
        public void GetPlayerByIDTest()
        {
            var result = playerClient.GetPlayerByID(successPlayer.IDPlayer);
            Assert.IsTrue(result.Equals(successPlayer));
        }

        [TestMethod]
        public void GetPlayerByIDTestFail()
        {
            var result = playerClient.GetPlayerByID(successPlayer.IDPlayer);
            Assert.IsTrue(!result.Equals(failurePlayer));
        }

        [TestMethod]
        public void GetPlayerByNicknameTest()
        {
            var result = playerClient.GetPlayerByNickname("Usuario 1");
            Assert.IsTrue(result.Equals(successPlayer));
        }

        [TestMethod]
        public void GetPlayerByNicknameTestFail()
        {
            var result = playerClient.GetPlayerByNickname("Usuario 2");
            Assert.IsTrue(!result.Equals(failurePlayer));
        }

        [TestMethod]
        public void GetSpecifiedPlayersTest()
        {
            var result = playerClient.GetSpecifiedPlayers("Usuario 1");
            Assert.IsTrue(result.Contains(successPlayer));
        }

        [TestMethod]
        public void GetSpecifiedPlayersTestFail()
        {
            var result = playerClient.GetSpecifiedPlayers("Usuario 2");
            Assert.IsTrue(!result.Contains(failurePlayer));
        }

        [TestMethod]
        public void ModifyPlayerTest()
        {
            playerClient.ModifyPlayer(successPlayer);
        }

        [TestMethod]
        public void ModifyPasswordByEmailTest()
        {
            playerClient.ModifyPasswordByEmail("caffeinated557@gmail.com", "Papadopulos#334");
        }

        [TestMethod]
        public void TheEmailIsAlreadyRegistedTest()
        {
            Assert.IsTrue(playerClient.TheEmailIsAlreadyRegisted("caffeinated555@gmail.com"));
        }

        [TestMethod]
        public void TheEmailIsAlreadyRegistedTestFail()
        {
            Assert.IsTrue(!playerClient.TheEmailIsAlreadyRegisted("caffeinated556@gmail.com"));
        }

        [TestMethod]
        public void TheNicknameIsAlreadyRegistedTest()
        {
            Assert.IsTrue(playerClient.TheNicknameIsAlreadyRegisted("Usuario 1"));
        }

        [TestMethod]
        public void TheNicknameIsAlreadyRegistedTestFail()
        {
            Assert.IsTrue(!playerClient.TheNicknameIsAlreadyRegisted("Usuario 2"));
        }
    }
}
