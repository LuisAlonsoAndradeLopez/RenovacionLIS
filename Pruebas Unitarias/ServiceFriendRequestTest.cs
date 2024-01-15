using System;
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
        private static FriendRequests successFriendRequests;
        private static FriendRequests failureFriendRequests;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            friendRequestNonCallbackMethodsClient = new FriendRequestNonCallbackMethodsClient();

            successFriendRequests = new FriendRequests
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

            friendRequestNonCallbackMethodsClient.AddFriendRequest(successFriendRequests);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            
        }



        [TestMethod]
        public void GetFriendsRequestsByProfileIDTest()
        {
            var result = friendRequestNonCallbackMethodsClient.GetFriendsRequestsByProfileID(successFriendRequests.Profiles.IDProfile);

            //Assert.IsTrue(result.Any(item =>
            //    item.Names == failurePlayer.Names && item.Surnames == failurePlayer.Surnames &&
            //    item.Email == failurePlayer.Email && item.NickName == failurePlayer.NickName));
        }

        [TestMethod]
        public void GetFriendsRequestsByProfileIDTestFail()
        {
            bool dataFound = false;

            foreach (var dataSelected in friendRequestNonCallbackMethodsClient.GetFriendsRequestsByProfileID(failureFriendRequests.Profiles.IDProfile))
            {
                if (dataSelected.IDFriendRequest == failureFriendRequests.IDFriendRequest &&
                    dataSelected.Message == failureFriendRequests.Message &&
                    dataSelected.CreationDate == failureFriendRequests.CreationDate &&
                    dataSelected.SendingStatus == failureFriendRequests.SendingStatus &&
                    dataSelected.AceptationStatus == failureFriendRequests.AceptationStatus)
                {
                    dataFound = true;
                    break;
                }

            }

            Assert.IsTrue(!dataFound);
        }

        [TestMethod]
        public void GetFriendsRequestsByProfile1IDTest()
        {
            bool dataFound = false;

            foreach (var dataSelected in friendRequestNonCallbackMethodsClient.GetFriendsRequestsByProfileID(successFriendRequests.Profiles1.IDProfile))
            {
                if (dataSelected.IDFriendRequest == successFriendRequests.IDFriendRequest &&
                    dataSelected.Message == successFriendRequests.Message &&
                    dataSelected.CreationDate == successFriendRequests.CreationDate &&
                    dataSelected.SendingStatus == successFriendRequests.SendingStatus &&
                    dataSelected.AceptationStatus == successFriendRequests.AceptationStatus)
                {
                    dataFound = true;
                    break;
                }

            }

            Assert.IsTrue(dataFound);
        }

        [TestMethod]
        public void GetFriendsRequestsByProfile1IDTestFail()
        {
            bool dataFound = false;

            foreach (var dataSelected in friendRequestNonCallbackMethodsClient.GetFriendsRequestsByProfileID(failureFriendRequests.Profiles1.IDProfile))
            {
                if (dataSelected.IDFriendRequest == failureFriendRequests.IDFriendRequest &&
                    dataSelected.Message == failureFriendRequests.Message &&
                    dataSelected.CreationDate == failureFriendRequests.CreationDate &&
                    dataSelected.SendingStatus == failureFriendRequests.SendingStatus &&
                    dataSelected.AceptationStatus == failureFriendRequests.AceptationStatus)
                {
                    dataFound = true;
                    break;
                }

            }

            Assert.IsTrue(!dataFound);
        }

        [TestMethod]
        public void GetFriendRequestByIDTest()
        {

        }

        [TestMethod]
        public void GetFriendRequestByIDTestFail()
        {

        }

        [TestMethod]
        public void GetPendientsForAceptationFriendsRequestsByProfile1IDTest()
        {

        }

        [TestMethod]
        public void GetPendientsForAceptationFriendsRequestsByProfile1IDTestFail()
        {

        }

        [TestMethod]
        public void GetSentAndPendientsForAceptationFriendsRequestsByProfileIDTest()
        {

        }

        [TestMethod]
        public void GetSentAndPendientsForAceptationFriendsRequestsByProfileIDTestFail()
        {

        }

        [TestMethod]
        public void FriendRequestsListToFriendRequestListConverterTest()
        {

        }

        [TestMethod]
        public void FriendRequestsListToFriendRequestListConverterTestFail()
        {

        }

        [TestMethod]
        public void TheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfileTest()
        {

        }

        [TestMethod]
        public void TheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfileTestFail()
        {

        }

        [TestMethod]
        public void TheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfileTest()
        {

        }

        [TestMethod]
        public void TheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfileTestFail()
        {

        }

        [TestMethod]
        public void AddFriendRequestTest()
        {

        }

        [TestMethod]
        public void AcceptFriendRequestTest()
        {

        }

        [TestMethod]
        public void CancelFriendRequestTest()
        {

        }

        [TestMethod]
        public void RejectFriendRequestTest()
        {

        }
    }
}
