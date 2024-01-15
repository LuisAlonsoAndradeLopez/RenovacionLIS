using System;
using System.Linq;
using BCrypt.Net;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client.ServiceFriendRequestForNonCallbackMethodsReference;
using Renovación_LIS_Client.ServicePlayerReference;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;
using Players = Renovación_LIS_Client.ServicePlayerReference.Players;

namespace Tests
{
    [TestClass]
    public class ServicePlayerTest
    {
        private static PlayerClient playerClient;
        private static ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient;
        private static Players successPlayer;
        private static Players failurePlayer;
        private static Players auxiliaryPlayer;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            playerClient = new PlayerClient();
            profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();

            successPlayer = new Players
            {
                Names = "Usuario1",
                Surnames = "Pipao",
                NickName = "Usuario1",
                BirthDate = DateTime.Now,
                Email = "caffeinated555@gmail.com"
                //Password = BCrypt.Net.BCrypt.HashPassword("Papadopulos#111", BCrypt.Net.BCrypt.GenerateSalt()) 
            };

            failurePlayer = new Players
            {
                Names = "Usuario2",
                Surnames = "Pipao",
                NickName = "Usuario2",
                BirthDate = DateTime.Now,
                Email = "caffeinated556@gmail.com"
                //Password = BCrypt.Net.BCrypt.HashPassword("Papadopulos#222", BCrypt.Net.BCrypt.GenerateSalt())
            };

            auxiliaryPlayer = new Players
            {
                Names = "Usuario3",
                Surnames = "Pipao",
                NickName = "Usuario3",
                BirthDate = DateTime.Now,
                Email = "caffeinated557@gmail.com"
                //Password = BCrypt.Net.BCrypt.HashPassword("Papadopulos#333", BCrypt.Net.BCrypt.GenerateSalt())
            };

            successPlayer.IDPlayer = playerClient.AddPlayer(successPlayer);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            //profileNonCallbackMethodsClient.DeleteProfile(successPlayer.IDPlayer);
            //profileNonCallbackMethodsClient.DeleteProfile(auxiliaryPlayer.IDPlayer);
            //playerClient.DeletePlayer(successPlayer.NickName);
            //playerClient.DeletePlayer(auxiliaryPlayer.NickName);
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

            Assert.IsTrue(result.Any(item =>
                item.Names == successPlayer.Names && item.Surnames == successPlayer.Surnames &&
                item.Email == successPlayer.Email && item.NickName == successPlayer.NickName));
        }

        [TestMethod]

        public void GetPlayersTestFail()
        {
            var result = playerClient.GetPlayers();

            Assert.IsTrue(result.Any(item =>
                item.Names == failurePlayer.Names && item.Surnames == failurePlayer.Surnames &&
                item.Email == failurePlayer.Email && item.NickName == failurePlayer.NickName));
        }

        [TestMethod]
        public void GetPlayerByIDTest()
        {
            var result = playerClient.GetPlayerByID(successPlayer.IDPlayer);

            Assert.IsTrue(
                result.Names == successPlayer.Names && result.Surnames == successPlayer.Surnames &&
                result.Email == successPlayer.Email && result.NickName == successPlayer.NickName);
        }

        [TestMethod]
        public void GetPlayerByIDTestFail()
        {
            var result = playerClient.GetPlayerByID(successPlayer.IDPlayer);

            Assert.IsFalse(
                result.Names == failurePlayer.Names && result.Surnames == failurePlayer.Surnames &&
                result.Email == failurePlayer.Email && result.NickName == failurePlayer.NickName);
        }

        [TestMethod]
        public void GetPlayerByNicknameTest()
        {
            var result = playerClient.GetPlayerByNickname(successPlayer.NickName);

            Assert.IsTrue(
                result.Names == successPlayer.Names && result.Surnames == successPlayer.Surnames &&
                result.Email == successPlayer.Email && result.NickName == successPlayer.NickName);
        }

        [TestMethod]
        public void GetPlayerByNicknameTestFail()
        {
            Assert.IsNull(playerClient.GetPlayerByNickname(failurePlayer.NickName));
        }

        [TestMethod]
        public void GetSpecifiedPlayersTest()
        {
            var result = playerClient.GetSpecifiedPlayers(successPlayer.NickName);

            Assert.IsTrue(result.Any(item =>
                item.Names == successPlayer.Names && item.Surnames == successPlayer.Surnames &&
                item.Email == successPlayer.Email && item.NickName == successPlayer.NickName));
        }

        [TestMethod]
        public void GetSpecifiedPlayersTestFail()
        {
            var result = playerClient.GetSpecifiedPlayers(failurePlayer.NickName);

            Assert.IsFalse(result.Any(item =>
                item.Names == failurePlayer.Names && item.Surnames == failurePlayer.Surnames &&
                item.Email == failurePlayer.Email && item.NickName == failurePlayer.NickName));
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
            Assert.IsTrue(playerClient.TheEmailIsAlreadyRegisted(successPlayer.Email));
        }

        [TestMethod]
        public void TheEmailIsAlreadyRegistedTestFail()
        {
            Assert.IsTrue(!playerClient.TheEmailIsAlreadyRegisted(failurePlayer.Email));
        }

        [TestMethod]
        public void TheNicknameIsAlreadyRegistedTest()
        {
            Assert.IsTrue(playerClient.TheNicknameIsAlreadyRegisted(successPlayer.NickName));
        }

        [TestMethod]
        public void TheNicknameIsAlreadyRegistedTestFail()
        {
            Assert.IsTrue(!playerClient.TheNicknameIsAlreadyRegisted(failurePlayer.NickName));
        }
    }
}
