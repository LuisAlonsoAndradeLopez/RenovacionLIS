using System;
using System.IO;
using System.ServiceModel;
using domain;
using DomainStatuses;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client;
using Renovación_LIS_Client.ServiceProfileForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceProfileForNonCallbackMethodsReference;

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

            successProfiles = new Profiles
            {
                IDProfile = 1,
                Coins = 0,
                LoginStatus = "NotLogged",
                Players = new Players
                {
                    IDPlayer = 1,
                    Names = "Usuario 1",
                    Surnames = "",
                    NickName = "Usuario 1",
                    BirthDate = DateTime.Now,
                    Email = "caffeinated555@gmail.com",
                    Password = ""
                }
            };

            successProfiles2 = new Profiles
            {
                IDProfile = 2,
                Coins = 0,
                LoginStatus = "Logged",
                Players = new Players
                {
                    IDPlayer = 2,
                    Names = "Usuario 2",
                    Surnames = "",
                    NickName = "Usuario 2",
                    BirthDate = DateTime.Now,
                    Email = "caffeinated556@gmail.com",
                    Password = ""
                }
            };

            failureProfiles = new Profiles
            {
                IDProfile = 3,
                Coins = 0,
                LoginStatus = "NotLogged",
                Players = new Players
                {
                    IDPlayer = 3,
                    Names = "Usuario 3",
                    Surnames = "",
                    NickName = "Usuario 3",
                    BirthDate = DateTime.Now,
                    Email = "caffeinated557@gmail.com",
                    Password = ""
                }
            };

            profileNonCallbackMethodsClient.AddProfile(successProfiles);

            byte[] imageData = File.ReadAllBytes("C:\\Users\\wmike\\OneDrive\\Escritorio\\Renovación LIS\\download.jpg");

            Assert.IsTrue(profileNonCallbackMethodsClient.UploadImage(successProfiles.Players.NickName + ".jpg", imageData));
        }

        [TestMethod]
        public void AddProfileTest()
        {
            profileNonCallbackMethodsClient.AddProfile(successProfiles);
        }

        [TestMethod]
        public void ChangeLoginStatusTest()
        {
            profileNonCallbackMethodsClient.ChangeLoginStatus(ProfileLoginStatuses.NotLogged, successProfiles.IDProfile);
        }

        [TestMethod]
        public void GetFriendsTest()
        {
            bool dataFound = false;


            foreach (var dataSelected in profileNonCallbackMethodsClient.GetFriends(successProfiles.IDProfile))
            {
                if (dataSelected.IDProfile == successProfiles2.IDProfile &&
                    dataSelected.Player.IDPlayer == successProfiles2.Players.IDPlayer &&
                    dataSelected.Player.NickName == successProfiles2.Players.NickName)
                {
                    dataFound = true;
                    break;
                }

            }

            Assert.IsTrue(dataFound);
        }

        [TestMethod]
        public void GetFriendsTestFail()
        {
            bool dataFound = false;

            foreach (var dataSelected in profileNonCallbackMethodsClient.GetFriends(successProfiles.IDProfile))
            {
                if (dataSelected.IDProfile == failureProfiles.IDProfile &&
                    dataSelected.Player.IDPlayer == failureProfiles.Players.IDPlayer &&
                    dataSelected.Player.NickName == failureProfiles.Players.NickName)
                {
                    dataFound = true;
                    break;
                }

            }

            Assert.IsTrue(!dataFound);
        }

        [TestMethod]
        public void GetImageTest()
        {
            Assert.IsNotNull(profileNonCallbackMethodsClient.GetImage("Usuario 1"));
        }

        [TestMethod]
        public void GetImageTestFail()
        {
            Assert.IsNotNull(profileNonCallbackMethodsClient.GetImage("Usuario 3"));
        }

        [TestMethod]
        public void GetProfileByIDTest()
        {
            bool dataFound = false;

            var dataSelected = profileNonCallbackMethodsClient.GetProfileByID(successProfiles.IDProfile);

            if (dataSelected.IDProfile == successProfiles.IDProfile &&
                dataSelected.Player.IDPlayer == successProfiles.Players.IDPlayer &&
                dataSelected.Player.NickName == successProfiles.Players.NickName)
            {
                dataFound = true;
            }

            Assert.IsTrue(dataFound);
        }

        [TestMethod]
        public void GetProfileByIDTestFail()
        {
            bool dataFound = false;

            var dataSelected = profileNonCallbackMethodsClient.GetProfileByID(failureProfiles.IDProfile);
            
            if (dataSelected.IDProfile == failureProfiles.IDProfile &&
                dataSelected.Player.IDPlayer == failureProfiles.Players.IDPlayer &&
                dataSelected.Player.NickName == failureProfiles.Players.NickName)
            {
                dataFound = true;
            }                            

            Assert.IsTrue(!dataFound);
        }

        [TestMethod]
        public void GetProfileByPlayerIDTest()
        {
            bool dataFound = false;

            var dataSelected = profileNonCallbackMethodsClient.GetProfileByPlayerID(successProfiles.Players.IDPlayer);

            if (dataSelected.IDProfile == successProfiles.IDProfile &&
                dataSelected.Player.IDPlayer == successProfiles.Players.IDPlayer &&
                dataSelected.Player.NickName == successProfiles.Players.NickName)
            {
                dataFound = true;
            }

            Assert.IsTrue(dataFound);
        }

        [TestMethod]
        public void GetProfileByPlayerIDTestFail()
        {
            bool dataFound = false;

            var dataSelected = profileNonCallbackMethodsClient.GetProfileByPlayerID(failureProfiles.Players.IDPlayer);

            if (dataSelected.IDProfile == failureProfiles.IDProfile &&
                dataSelected.Player.IDPlayer == failureProfiles.Players.IDPlayer &&
                dataSelected.Player.NickName == failureProfiles.Players.NickName)
            {
                dataFound = true;
            }

            Assert.IsTrue(!dataFound);
        }

        [TestMethod]
        public void GetProfileByPlayerNicknameTest()
        {
            bool dataFound = false;

            var dataSelected = profileNonCallbackMethodsClient.GetProfileByPlayerNickname(successProfiles.Players.NickName);

            if (dataSelected.IDProfile == successProfiles.IDProfile &&
                dataSelected.Player.IDPlayer == successProfiles.Players.IDPlayer &&
                dataSelected.Player.NickName == successProfiles.Players.NickName)
            {
                dataFound = true;
            }

            Assert.IsTrue(dataFound);
        }

        [TestMethod]
        public void GetProfileByPlayerNicknameTestFail()
        {
            bool dataFound = false;

            var dataSelected = profileNonCallbackMethodsClient.GetProfileByPlayerNickname(failureProfiles.Players.NickName);

            if (dataSelected.IDProfile == failureProfiles.IDProfile &&
                dataSelected.Player.IDPlayer == failureProfiles.Players.IDPlayer &&
                dataSelected.Player.NickName == failureProfiles.Players.NickName)
            {
                dataFound = true;
            }

            Assert.IsTrue(!dataFound);
        }

        [TestMethod]
        public void ModifyImageNameTest()
        {
            Assert.IsTrue(profileNonCallbackMethodsClient.ModifyImageName("Usuario 1", "Usuario 9"));
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
