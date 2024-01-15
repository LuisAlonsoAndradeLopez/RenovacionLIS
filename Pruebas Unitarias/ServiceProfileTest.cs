using System;
using System.IO;
using System.Linq;
using System.ServiceModel;
using DomainStatuses;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client;
using Renovación_LIS_Client.ServicePlayerReference;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;
using Profiles = Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference.Profiles;

namespace Tests
{
    [TestClass]
    public partial class ServiceProfileForCallbackMethods
    {
        private static ProfileCallbackMethodsClient profileCallbackMethodsClient;
        private static string successProfileNickname1;
        private static string successProfileNickname2;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            profileCallbackMethodsClient = new ProfileCallbackMethodsClient(new InstanceContext(new MainWindow("")));
            successProfileNickname1 = "Eloquak";
            successProfileNickname2 = "Elocraft";
            profileCallbackMethodsClient.Connect(successProfileNickname1);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            profileCallbackMethodsClient.Disconnect(successProfileNickname1);
        }



        [TestMethod]
        public void ConnectTest()
        {
            profileCallbackMethodsClient.Connect(successProfileNickname2);
        }

        [TestMethod]
        public void DisconnectTest()
        {
            profileCallbackMethodsClient.Disconnect(successProfileNickname2);
        }

        [TestMethod]
        public void InviteFriendToTheLobbyTest()
        {
            profileCallbackMethodsClient.InviteFriendToTheLobby(successProfileNickname1);
        }
    }



    [TestClass]
    public class ServiceProfileForNonCallbackMethodsTest
    {
        private static ProfileNonCallbackMethodsClient profileNonCallbackMethodsClient;
        private static Profiles successProfiles;
        private static Profiles successProfiles2;
        private static Profiles failureProfiles;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            profileNonCallbackMethodsClient = new ProfileNonCallbackMethodsClient();

            Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference.Players user1 = new Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference.Players
            {
                Names = "Usuariazo",
                Surnames = "",
                NickName = "Usuariazo",
                BirthDate = DateTime.Now,
                Email = "caffeinated555@gmail.com"
            };

            Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference.Players user2 = new Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference.Players
            {
                Names = "Usuariote",
                Surnames = "",
                NickName = "Usuariazo",
                BirthDate = DateTime.Now,
                Email = "caffeinated556@gmail.com"
            };

            Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference.Players user3 = new Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference.Players
            {
                Names = "UsuarioUsu",
                Surnames = "",
                NickName = "UsuarioUsu",
                BirthDate = DateTime.Now,
                Email = "caffeinated557@gmail.com"
            };



            Renovación_LIS_Client.ServicePlayerReference.Players user1ToInsertToDatabase = new Renovación_LIS_Client.ServicePlayerReference.Players
            {
                Names = "Usuariazo",
                Surnames = "",
                NickName = "Usuariazo",
                BirthDate = DateTime.Now,
                Email = "caffeinated555@gmail.com"
            };

            user1.IDPlayer = new PlayerClient().AddPlayer(user1ToInsertToDatabase);

            successProfiles = new Profiles
            {
                Coins = 0,
                LoginStatus = "NotLogged",
                Players = user1
            };

            successProfiles2 = new Profiles
            {
                Coins = 0,
                LoginStatus = "Logged",
                Players = user2
            };

            failureProfiles = new Profiles
            {
                Coins = 0,
                LoginStatus = "NotLogged",
                Players = user3
            };

            profileNonCallbackMethodsClient.AddProfile(successProfiles);

            byte[] imageData = File.ReadAllBytes("C:\\Users\\wmike\\OneDrive\\Escritorio\\Renovación LIS\\download.jpg");

            Assert.IsTrue(profileNonCallbackMethodsClient.UploadImage(successProfiles.Players.NickName + ".jpg", imageData));
        }

        [TestMethod]
        public void AddProfileTest()
        {
            profileNonCallbackMethodsClient.AddProfile(successProfiles2);
        }

        [TestMethod]
        public void ChangeLoginStatusTest()
        {
            profileNonCallbackMethodsClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, successProfiles.IDProfile);
        }

        [TestMethod]
        public void GetFriendsTest()
        {
            var result = profileNonCallbackMethodsClient.GetFriends(successProfiles.IDProfile);

            Assert.IsTrue(result.Any(item =>
                item.IDProfile == successProfiles2.IDProfile &&
                item.Player.IDPlayer == successProfiles2.Players.IDPlayer &&
                item.Player.NickName == successProfiles2.Players.NickName));
        }

        [TestMethod]
        public void GetFriendsTestFail()
        {
            var result = profileNonCallbackMethodsClient.GetFriends(successProfiles.IDProfile);

            Assert.IsFalse(result.Any(item =>
                item.IDProfile == failureProfiles.IDProfile &&
                item.Player.IDPlayer == failureProfiles.Players.IDPlayer &&
                item.Player.NickName == failureProfiles.Players.NickName));
        }

        [TestMethod]
        public void GetImageTest()
        {
            Assert.IsNotNull(profileNonCallbackMethodsClient.GetImage(successProfiles.Players.NickName));
        }

        [TestMethod]
        public void GetImageTestFail()
        {
            Assert.IsNotNull(profileNonCallbackMethodsClient.GetImage(failureProfiles.Players.NickName));
        }

        [TestMethod]
        public void GetProfileByIDTest()
        {
            var result = profileNonCallbackMethodsClient.GetProfileByID(successProfiles.IDProfile);

            Assert.IsTrue(
                result.IDProfile == successProfiles2.IDProfile &&
                result.Player.IDPlayer == successProfiles2.Players.IDPlayer &&
                result.Player.NickName == successProfiles2.Players.NickName);
        }

        [TestMethod]
        public void GetProfileByIDTestFail()
        {
            var result = profileNonCallbackMethodsClient.GetProfileByID(failureProfiles.IDProfile);

            Assert.IsFalse(
                result.IDProfile == successProfiles2.IDProfile &&
                result.Player.IDPlayer == successProfiles2.Players.IDPlayer &&
                result.Player.NickName == successProfiles2.Players.NickName);
        }

        [TestMethod]
        public void GetProfileByPlayerIDTest()
        {
            var result = profileNonCallbackMethodsClient.GetProfileByPlayerID(successProfiles.Players.IDPlayer);

            Assert.IsTrue(
                result.IDProfile == successProfiles2.IDProfile &&
                result.Player.IDPlayer == successProfiles2.Players.IDPlayer &&
                result.Player.NickName == successProfiles2.Players.NickName);
        }

        [TestMethod]
        public void GetProfileByPlayerIDTestFail()
        {
            var result = profileNonCallbackMethodsClient.GetProfileByPlayerID(failureProfiles.Players.IDPlayer);

            Assert.IsFalse(
                result.IDProfile == successProfiles2.IDProfile &&
                result.Player.IDPlayer == successProfiles2.Players.IDPlayer &&
                result.Player.NickName == successProfiles2.Players.NickName);
        }

        [TestMethod]
        public void GetProfileByPlayerNicknameTest()
        {
            var result = profileNonCallbackMethodsClient.GetProfileByPlayerNickname(successProfiles.Players.NickName);

            Assert.IsTrue(
                result.IDProfile == successProfiles2.IDProfile &&
                result.Player.IDPlayer == successProfiles2.Players.IDPlayer &&
                result.Player.NickName == successProfiles2.Players.NickName);
        }

        [TestMethod]
        public void GetProfileByPlayerNicknameTestFail()
        {
            var result = profileNonCallbackMethodsClient.GetProfileByPlayerNickname(failureProfiles.Players.NickName);

            Assert.IsFalse(
                result.IDProfile == successProfiles2.IDProfile &&
                result.Player.IDPlayer == successProfiles2.Players.IDPlayer &&
                result.Player.NickName == successProfiles2.Players.NickName);
        }

        [TestMethod]
        public void ModifyImageNameTest()
        {
            Assert.IsTrue(profileNonCallbackMethodsClient.ModifyImageName(successProfiles.Players.NickName, "Usuario 9"));
        }

        [TestMethod]
        public void TheProfileIsLoggedTest()
        {
            Assert.IsTrue(profileNonCallbackMethodsClient.TheProfileIsLogged(2));
        }

        [TestMethod]
        public void TheProfileIsLoggedTestFail()
        {
            Assert.IsTrue(!profileNonCallbackMethodsClient.TheProfileIsLogged(3));
        }

        [TestMethod]
        public void UploadImageTest()
        {
            byte[] imageData = File.ReadAllBytes("C:\\Users\\wmike\\OneDrive\\Escritorio\\Renovación LIS\\download.jpg");

            Assert.IsTrue(profileNonCallbackMethodsClient.UploadImage(successProfiles.Players.NickName + ".jpg", imageData));
        }

        [TestMethod]
        public void AddFriendshipTest()
        {
            profileNonCallbackMethodsClient.AddFriendship(successProfiles, successProfiles2);
        }

        [TestMethod]
        public void CancelFriendshipTest()
        {
            profileNonCallbackMethodsClient.CancelFriendship(successProfiles, successProfiles2);
        }
    }
}
