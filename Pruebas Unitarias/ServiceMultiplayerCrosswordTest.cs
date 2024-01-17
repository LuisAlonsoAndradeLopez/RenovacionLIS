using System.Linq;
using System.ServiceModel;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForCallbackMethodsReference;
using Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference;
using Renovación_LIS_Client.View;

namespace Tests
{
    [TestClass]
    public class ServiceMultiplayerCrosswordForCallbackMethodsTest
    {
        private static MultiplayerCrosswordCallbackMethodsClient multiplayerCrosswordCallbackMethodsClient;
        private static string successProfileNickname1;
        private static string successProfileNickname2;
        private static string successProfileNickname3;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            multiplayerCrosswordCallbackMethodsClient = new MultiplayerCrosswordCallbackMethodsClient(new InstanceContext(new RandomMultiplayerCrosswordGeneratorView()));
            successProfileNickname1 = "Heribert Falopio";
            successProfileNickname2 = "FnordManatee";
            successProfileNickname3 = "Roberto Justo";
            multiplayerCrosswordCallbackMethodsClient.Connect(successProfileNickname1);
            multiplayerCrosswordCallbackMethodsClient.Connect(successProfileNickname2);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            multiplayerCrosswordCallbackMethodsClient.Disconnect(successProfileNickname1);
            multiplayerCrosswordCallbackMethodsClient.Disconnect(successProfileNickname2);
        }


        [TestMethod]
        public void AddCompletedWordToAllConnectedProfilesCrosswords()
        {
            multiplayerCrosswordCallbackMethodsClient.AddCompletedWordToAllConnectedProfilesCrosswords("Word1", "Answer1");
        }

        [TestMethod]
        public void AddPointsToProfileTest()
        {
            multiplayerCrosswordCallbackMethodsClient.AddPointsToProfile(successProfileNickname1, 3);
        }

        [TestMethod]
        public void ConnectTest()
        {
            multiplayerCrosswordCallbackMethodsClient.Connect(successProfileNickname3);
        }

        [TestMethod]
        public void DisconnectTest()
        {
            multiplayerCrosswordCallbackMethodsClient.Disconnect(successProfileNickname3);
        }

        [TestMethod]
        public void EndGameTest()
        {
            multiplayerCrosswordCallbackMethodsClient.EndGame();
        }

        [TestMethod]
        public void ExpeltProfileForTheGameForBeingAloneTest()
        {
            multiplayerCrosswordCallbackMethodsClient.ExpeltProfileForTheGameForBeingAlone();
        }

        [TestMethod]
        public void OpenTheLobbyViewToAllConnectedProfilesTest()
        {
            multiplayerCrosswordCallbackMethodsClient.OpenTheLobbyViewToAllConnectedProfiles();
        }

        [TestMethod]
        public void OpenTheMultiplayerCrosswordViewToConnectedClientsTest()
        {
            multiplayerCrosswordCallbackMethodsClient.OpenTheMultiplayerCrosswordViewToConnectedClients();
        }

        [TestMethod]
        public void OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPagesTest()
        {
            multiplayerCrosswordCallbackMethodsClient.OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages();
        }

        [TestMethod]
        public void ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfilesTest()
        {
            multiplayerCrosswordCallbackMethodsClient.ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles();
        }

        [TestMethod]
        public void ShowTheSelectedCrosswordBorderToConnectedClientsTest()
        {
            multiplayerCrosswordCallbackMethodsClient.ShowTheSelectedCrosswordBorderToConnectedClients();
        }

        [TestMethod]
        public void StartGameCountdownTest()
        {
            multiplayerCrosswordCallbackMethodsClient.StartGameCountdown(3);
        }

        [TestMethod]
        public void StartGlobalCountdownTest()
        {
            multiplayerCrosswordCallbackMethodsClient.StartGlobalCountdown(3);
        }

        [TestMethod]
        public void StartTheCrosswordSelectionAlgorythmTest()
        {
            multiplayerCrosswordCallbackMethodsClient.StartTheCrosswordSelectionAlgorythm();
        }
    }



    [TestClass]
    public class ServiceMultiplayerCrosswordForNonCallbackMethodsTest
    {
        private static MultiplayerCrosswordCallbackMethodsClient multiplayerCrosswordCallbackMethodsClient;
        private static MultiplayerCrosswordNonCallbackMethodsClient multiplayerCrosswordNonCallbackMethodsClient;
        private static string successProfileNickname1;
        private static string successProfileNickname2;
        private static string successProfileNickname3;
        private static string failureProfileNickname;

        [ClassInitialize]
        public static void ClassInitialize(TestContext context)
        {
            multiplayerCrosswordCallbackMethodsClient = new MultiplayerCrosswordCallbackMethodsClient(new InstanceContext(new RandomMultiplayerCrosswordGeneratorView()));
            multiplayerCrosswordNonCallbackMethodsClient = new MultiplayerCrosswordNonCallbackMethodsClient();
            successProfileNickname1 = "Melman123";
            successProfileNickname2 = "Rick";
            successProfileNickname3 = "Octadioss";
            failureProfileNickname = "El Picadero Express";
            multiplayerCrosswordCallbackMethodsClient.Connect(successProfileNickname1);
            multiplayerCrosswordCallbackMethodsClient.Connect(successProfileNickname2);
            multiplayerCrosswordCallbackMethodsClient.Connect(successProfileNickname3);
            multiplayerCrosswordNonCallbackMethodsClient.SetAdmin(successProfileNickname1);
        }

        [ClassCleanup]
        public static void ClassCleanup()
        {
            multiplayerCrosswordCallbackMethodsClient.Disconnect(successProfileNickname1);
            multiplayerCrosswordCallbackMethodsClient.Disconnect(successProfileNickname2);
            multiplayerCrosswordCallbackMethodsClient.Disconnect(successProfileNickname3);
        }


        [TestMethod]
        public void ClearAnsweredWordsListTest()
        {
            multiplayerCrosswordNonCallbackMethodsClient.ClearAnsweredWordsList();
        }

        [TestMethod]
        public void GetAdminTest()
        {
            Assert.IsTrue(multiplayerCrosswordNonCallbackMethodsClient.GetAdmin() == successProfileNickname1);
        }

        [TestMethod]
        public void GetAdminTestFail()
        {
            Assert.IsTrue(!(multiplayerCrosswordNonCallbackMethodsClient.GetAdmin() == failureProfileNickname));
        }

        [TestMethod]
        public void GetAllProfilesAndItsPointsTest()
        {
            DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword key = new DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
            {
                Key = successProfileNickname1,
                Value = 0
            };

            var result = multiplayerCrosswordNonCallbackMethodsClient.GetAllProfilesAndItsPoints();

            Assert.IsTrue(result.Any(item =>
                item.Key == key.Key && item.Value == key.Value));

        }

        [TestMethod]
        public void GetAllProfilesAndItsPointsTestFail()
        {
            DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword key = new DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
            {
                Key = failureProfileNickname,
                Value = 0
            };

            var result = multiplayerCrosswordNonCallbackMethodsClient.GetAllProfilesAndItsPoints();

            Assert.IsTrue(!result.Any(item =>
                item.Key == key.Key && item.Value == key.Value));
        }

        [TestMethod]
        public void GetConnectedProfilesTest()
        {
            Assert.IsTrue(multiplayerCrosswordNonCallbackMethodsClient.GetConnectedProfiles().Contains(successProfileNickname1));
        }

        [TestMethod]
        public void GetConnectedProfilesTestFail()
        {
            Assert.IsTrue(!multiplayerCrosswordNonCallbackMethodsClient.GetConnectedProfiles().Contains(failureProfileNickname));
        }

        [TestMethod]
        public void GetCrosswordNumberSelectedTest()
        {
            Assert.IsTrue(multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordNumberSelected() > -1);
        }

        [TestMethod]
        public void GetCrosswordsPlayedTest()
        {
            Assert.IsTrue(multiplayerCrosswordNonCallbackMethodsClient.GetCrosswordsPlayed() == 0);
        }

        [TestMethod]
        public void GetPointsFromAProfileTest()
        {
            Assert.IsTrue(multiplayerCrosswordNonCallbackMethodsClient.GetPointsFromAProfile(successProfileNickname1) == 0);
        }

        [TestMethod]
        public void SetAdminTest()
        {
            multiplayerCrosswordNonCallbackMethodsClient.SetAdmin(successProfileNickname2);
        }

        [TestMethod]
        public void SetTheCrosswordIsCompleteTest()
        {
            multiplayerCrosswordNonCallbackMethodsClient.SetTheCrosswordIsComplete();
        }

        [TestMethod]
        public void SetTheCrosswordIsNotCompleteTest()
        {
            multiplayerCrosswordNonCallbackMethodsClient.SetTheCrosswordIsNotComplete();
        }

        [TestMethod]
        public void TheWordIsAnsweredTest()
        {
            Assert.IsTrue(!multiplayerCrosswordNonCallbackMethodsClient.TheWordIsAnswered("Word1"));
        }
    }
}
