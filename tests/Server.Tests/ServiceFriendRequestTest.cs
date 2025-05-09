using System;
using System.Linq;
using System.ServiceModel;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client.ServiceFriendRequestForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceFriendRequestForNonCallbackMethodsReference;
using Renovación_LIS_Client.View;

namespace Tests
{
    [TestClass]
    public class ServiceFriendRequestForCallbackMethods
    {
        private static FriendRequestCallbackMethodsClient friendRequestCallbackMethodsClient;
        private static string successProfileNickname;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            friendRequestCallbackMethodsClient = new FriendRequestCallbackMethodsClient(new InstanceContext(new FriendsView()));
            successProfileNickname = "Camu camu";
            friendRequestCallbackMethodsClient.Connect(successProfileNickname);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            friendRequestCallbackMethodsClient.Disconnect(successProfileNickname);
        }
        

        [TestMethod]
        public void ConnectTest()
        {
            friendRequestCallbackMethodsClient.Connect(successProfileNickname);
        }

        [TestMethod]
        public void DisconnectTest()
        {
            friendRequestCallbackMethodsClient.Disconnect(successProfileNickname);
        }

        [TestMethod]
        public void UpdateFriendRequestsListsToAllConnectedClientsTest()
        {
            friendRequestCallbackMethodsClient.UpdateFriendRequestsListsToAllConnectedClients();
        }
    }


    [TestClass]
    public class ServiceFriendRequestForNonCallbackMethodsTest
    {
        private static FriendRequestNonCallbackMethodsClient friendRequestNonCallbackMethodsClient;
        private static FriendRequests successFriendRequests1;
        private static FriendRequests successFriendRequests2;
        private static FriendRequests failureFriendRequests;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            friendRequestNonCallbackMethodsClient = new FriendRequestNonCallbackMethodsClient();

            successFriendRequests1 = new FriendRequests
            {
                Message = "",
                CreationDate = DateTime.Now,
                SendingStatus = "Sent",
                AceptationStatus = "Rejected",
                Profiles = new Profiles
                {
                    Coins = 0,
                    LoginStatus = "NotLogged",
                    Players = new Players
                    {
                        Names = "Amigaza",
                        Surnames = "",
                        NickName = "Amigaza",
                        BirthDate = DateTime.Now,
                        Email = "caffeinated555@gmail.com",
                        Password = ""
                    }
                },

                Profiles1 = new Profiles
                {
                    Coins = 0,
                    LoginStatus = "NotLogged",
                    Players = new Players
                    {
                        Names = "Usuario 2",
                        Surnames = "",
                        NickName = "Usuario 2",
                        BirthDate = DateTime.Now,
                        Email = "caffeinated556@gmail.com",
                        Password = ""
                    }
                }
            };

            successFriendRequests2 = new FriendRequests
            {
                Message = "",
                CreationDate = DateTime.Now,
                SendingStatus = "Sent",
                AceptationStatus = "Rejected",
                Profiles = new Profiles
                {
                    Coins = 0,
                    LoginStatus = "NotLogged",
                    Players = new Players
                    {
                        Names = "Amigazazo",
                        Surnames = "",
                        NickName = "Amigazaza",
                        BirthDate = DateTime.Now,
                        Email = "caffeinated559@gmail.com",
                        Password = ""
                    }
                },

                Profiles1 = new Profiles
                {
                    Coins = 0,
                    LoginStatus = "NotLogged",
                    Players = new Players
                    {
                        Names = "Usuario 2",
                        Surnames = "",
                        NickName = "Usuario 2",
                        BirthDate = DateTime.Now,
                        Email = "caffeinated560@gmail.com",
                        Password = ""
                    }
                }
            };

            failureFriendRequests = new FriendRequests
            {
                Message = "",
                CreationDate = DateTime.Now,
                SendingStatus = "Sent",
                AceptationStatus = "Rejected",
                Profiles = new Profiles
                {
                    Coins = 0,
                    LoginStatus = "NotLogged",
                    Players = new Players
                    {
                        Names = "Usuario 1",
                        Surnames = "",
                        NickName = "Usuario 1",
                        BirthDate = DateTime.Now,
                        Email = "caffeinated555@gmail.com",
                        Password = ""
                    }
                },

                Profiles1 = new Profiles
                {
                    Coins = 0,
                    LoginStatus = "NotLogged",
                    Players = new Players
                    {
                        Names = "Usuario 3",
                        Surnames = "",
                        NickName = "Usuario 3",
                        BirthDate = DateTime.Now,
                        Email = "caffeinated556@gmail.com",
                        Password = ""
                    }
                }
            };

            friendRequestNonCallbackMethodsClient.AddFriendRequest(successFriendRequests1);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            
        }



        [TestMethod]
        public void GetFriendsRequestsByProfileIDTest()
        {
            var result = friendRequestNonCallbackMethodsClient.GetFriendsRequestsByProfileID(successFriendRequests1.Profiles.IDProfile);

            Assert.IsTrue(result.Any(item =>
                item.IDFriendRequest == successFriendRequests1.IDFriendRequest &&
                item.Message == successFriendRequests1.Message &&
                item.CreationDate == successFriendRequests1.CreationDate &&
                item.SendingStatus == successFriendRequests1.SendingStatus &&
                item.AceptationStatus == successFriendRequests1.AceptationStatus));
        }

        [TestMethod]
        public void GetFriendsRequestsByProfileIDTestFail()
        {
            var result = friendRequestNonCallbackMethodsClient.GetFriendsRequestsByProfileID(failureFriendRequests.Profiles.IDProfile);

            Assert.IsFalse(result.Any(item =>
                item.IDFriendRequest == failureFriendRequests.IDFriendRequest &&
                item.Message == failureFriendRequests.Message &&
                item.CreationDate == failureFriendRequests.CreationDate &&
                item.SendingStatus == failureFriendRequests.SendingStatus &&
                item.AceptationStatus == failureFriendRequests.AceptationStatus));
        }

        [TestMethod]
        public void GetFriendsRequestsByProfile1IDTest()
        {
            var result = friendRequestNonCallbackMethodsClient.GetFriendsRequestsByProfileID(successFriendRequests1.Profiles1.IDProfile);
            
            Assert.IsTrue(result.Any(item =>
                item.IDFriendRequest == successFriendRequests1.IDFriendRequest &&
                item.Message == successFriendRequests1.Message &&
                item.CreationDate == successFriendRequests1.CreationDate &&
                item.SendingStatus == successFriendRequests1.SendingStatus &&
                item.AceptationStatus == successFriendRequests1.AceptationStatus));
        }

        [TestMethod]
        public void GetFriendsRequestsByProfile1IDTestFail()
        {
            var result = friendRequestNonCallbackMethodsClient.GetFriendsRequestsByProfileID(failureFriendRequests.Profiles1.IDProfile);

            Assert.IsFalse(result.Any(item =>
                item.IDFriendRequest == failureFriendRequests.IDFriendRequest &&
                item.Message == failureFriendRequests.Message &&
                item.CreationDate == failureFriendRequests.CreationDate &&
                item.SendingStatus == failureFriendRequests.SendingStatus &&
                item.AceptationStatus == failureFriendRequests.AceptationStatus));
        }

        [TestMethod]
        public void GetFriendRequestByIDTest()
        {
            var result = friendRequestNonCallbackMethodsClient.GetFriendRequestByID(successFriendRequests1.Profiles.Players.IDPlayer);

            Assert.IsTrue(
                result.IDFriendRequest == successFriendRequests1.IDFriendRequest &&
                result.Message == successFriendRequests1.Message &&
                result.CreationDate == successFriendRequests1.CreationDate &&
                result.SendingStatus == successFriendRequests1.SendingStatus &&
                result.AceptationStatus == successFriendRequests1.AceptationStatus);
        }

        [TestMethod]
        public void GetFriendRequestByIDTestFail()
        {
            var result = friendRequestNonCallbackMethodsClient.GetFriendRequestByID(failureFriendRequests.Profiles.Players.IDPlayer);

            Assert.IsFalse(
                result.IDFriendRequest == failureFriendRequests.IDFriendRequest &&
                result.Message == failureFriendRequests.Message &&
                result.CreationDate == failureFriendRequests.CreationDate &&
                result.SendingStatus == failureFriendRequests.SendingStatus &&
                result.AceptationStatus == failureFriendRequests.AceptationStatus);
        }

        [TestMethod]
        public void GetPendientsForAceptationFriendsRequestsByProfile1IDTest()
        {
            var result = friendRequestNonCallbackMethodsClient.GetPendientsForAceptationFriendsRequestsByProfile1ID(successFriendRequests1.Profiles1.IDProfile);

            Assert.IsTrue(result.Any(item =>
                item.IDFriendRequest == successFriendRequests1.IDFriendRequest &&
                item.Message == successFriendRequests1.Message &&
                item.CreationDate == successFriendRequests1.CreationDate &&
                item.SendingStatus == successFriendRequests1.SendingStatus &&
                item.AceptationStatus == successFriendRequests1.AceptationStatus));
        }

        [TestMethod]
        public void GetPendientsForAceptationFriendsRequestsByProfile1IDTestFail()
        {
            var result = friendRequestNonCallbackMethodsClient.GetPendientsForAceptationFriendsRequestsByProfile1ID(failureFriendRequests.Profiles1.IDProfile);

            Assert.IsFalse(result.Any(item =>
                item.IDFriendRequest == failureFriendRequests.IDFriendRequest &&
                item.Message == failureFriendRequests.Message &&
                item.CreationDate == failureFriendRequests.CreationDate &&
                item.SendingStatus == failureFriendRequests.SendingStatus &&
                item.AceptationStatus == failureFriendRequests.AceptationStatus));
        }

        [TestMethod]
        public void GetSentAndPendientsForAceptationFriendsRequestsByProfileIDTest()
        {
            var result = friendRequestNonCallbackMethodsClient.GetSentAndPendientsForAceptationFriendsRequestsByProfileID(successFriendRequests1.Profiles.IDProfile);

            Assert.IsTrue(result.Any(item =>
                item.IDFriendRequest == successFriendRequests1.IDFriendRequest &&
                item.Message == successFriendRequests1.Message &&
                item.CreationDate == successFriendRequests1.CreationDate &&
                item.SendingStatus == successFriendRequests1.SendingStatus &&
                item.AceptationStatus == successFriendRequests1.AceptationStatus));
        }

        [TestMethod]
        public void GetSentAndPendientsForAceptationFriendsRequestsByProfileIDTestFail()
        {
            var result = friendRequestNonCallbackMethodsClient.GetSentAndPendientsForAceptationFriendsRequestsByProfileID(failureFriendRequests.Profiles.IDProfile);

            Assert.IsFalse(result.Any(item =>
                item.IDFriendRequest == failureFriendRequests.IDFriendRequest &&
                item.Message == failureFriendRequests.Message &&
                item.CreationDate == failureFriendRequests.CreationDate &&
                item.SendingStatus == failureFriendRequests.SendingStatus &&
                item.AceptationStatus == failureFriendRequests.AceptationStatus));
        }

        [TestMethod]
        public void AddFriendRequestTest()
        {
            friendRequestNonCallbackMethodsClient.AddFriendRequest(successFriendRequests2);
        }

        [TestMethod]
        public void AcceptFriendRequestTest()
        {
            friendRequestNonCallbackMethodsClient.AcceptFriendRequest(successFriendRequests1);
        }

        [TestMethod]
        public void CancelFriendRequestTest()
        {
            friendRequestNonCallbackMethodsClient.CancelFriendRequest(successFriendRequests1);
        }

        [TestMethod]
        public void RejectFriendRequestTest()
        {
            friendRequestNonCallbackMethodsClient.RejectFriendRequest(successFriendRequests1);
        }
    }
}
