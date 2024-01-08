using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.ServiceModel;
using System.Threading;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceMultiplayerCrosswordForNonCallbackMethods : IMultiplayerCrosswordNonCallbackMethods
    {
        private readonly ServiceMultiplayerCrosswordForCallbackMethods serviceMultiplayerCrosswordForCallbackMethods;


        #region Constructors
        public ServiceMultiplayerCrosswordForNonCallbackMethods()
        {
            serviceMultiplayerCrosswordForCallbackMethods = new ServiceMultiplayerCrosswordForCallbackMethods();
        }
        #endregion



        #region Non-Callback methods
        public string GetAdmin()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetAdmin();
        }

        public List<String> GetConnectedProfiles()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetConnectedProfiles();
        }

        public int GetCrosswordNumberSelected()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetCrosswordNumberSelected();
        }
        public int GetPointsFromAProfile(string nickname)
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetPointsFromAProfile(nickname);
        }

        public int GetCrosswordsPlayed()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetCrosswordsPlayed();
        }

        public void SetAdmin(string username)
        {
            serviceMultiplayerCrosswordForCallbackMethods.SetAdmin(username);
        }

        public void SetTheCrosswordIsComplete()
        {
            serviceMultiplayerCrosswordForCallbackMethods.SetTheCrosswordIsComplete();
        }

        public void SetTheCrosswordIsNotComplete()
        {
            serviceMultiplayerCrosswordForCallbackMethods.SetTheCrosswordIsNotComplete();
        }
        #endregion



        #region Auxiliary methods for do the tests
        #endregion
    }



    public class ServiceMultiplayerCrosswordForCallbackMethods : IMultiplayerCrosswordCallbackMethods
    {
        private static string admin;
        private static readonly Dictionary<string, IMultiplayerCrosswordCallback> connectedProfiles = new Dictionary<string, IMultiplayerCrosswordCallback>();
        private static Dictionary<string, int> profilesAndItsPoints = new Dictionary<string, int>();
        private static readonly int[] crosswordsPlayedNumbers = new int[3];
        private static int crosswordsPlayed = 0;
        private static int crosswordNumberSelected;
        private static bool selectedCrosswordCompleted = false;



        #region Callback methods
        public void AddPointsToProfile(string userNickname, int points)
        {
            if (profilesAndItsPoints.ContainsKey(userNickname))
            {
                profilesAndItsPoints[userNickname] += points;
                UpdateProfilesPointsListsForAllConnectedProfiles();
            }
        }

        public void Connect(string username)
        {
            IMultiplayerCrosswordCallback callback = OperationContext.Current.GetCallbackChannel<IMultiplayerCrosswordCallback>();

            if (!connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Add(username, callback);
                profilesAndItsPoints.Add(username, 0);
            }
        }

        public void Disconnect(string username)
        {
            if (connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Remove(username);
                profilesAndItsPoints.Remove(username);
            }
        }

        public void EndGame()
        {
            List<string> keysCopy = new List<string>(profilesAndItsPoints.Keys);

            foreach (string key in keysCopy)
            {
                profilesAndItsPoints[key] = 0;
            }

            Array.Clear(crosswordsPlayedNumbers, 0, crosswordsPlayedNumbers.Length);
            crosswordsPlayed = 0;
            crosswordNumberSelected = -1;
        }

        public void OpenTheLobbyViewToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.OpenLobbyView();
            }
        }

        public void OpenTheMultiplayerCrosswordViewToConnectedClients()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.OpenMultiplayerCrosswordView();
            }
        }

        public void OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages()
        {
            foreach (var profile in connectedProfiles)
            {
                profile.Value.OpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage();
            }

            //Thread.Sleep(3000);
        }

        public void ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles)
            {
                profile.Value.ShowBlackScreenAnimationOnLobbyViewOrItsChildPages();
            }

            Thread.Sleep(1000);
        }

        public void ShowTheSelectedCrosswordBorderToConnectedClients()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.ShowTheSelectedCrosswordBorder();
            }

            Thread.Sleep(3000);
        }

        public void StartTheCrosswordSelectionAlgorythm()
        {
            while (true)
            {
                crosswordNumberSelected = new Random().Next(1, 6);
                if (Array.IndexOf(crosswordsPlayedNumbers, crosswordNumberSelected) == -1)
                {
                    crosswordsPlayedNumbers[crosswordsPlayed] = crosswordNumberSelected;
                    break;
                }
            }

            crosswordsPlayed++;
        }

        // Example method to start the countdown
        public void StartGameCountdown(int totalSeconds)
        {
            for (int i = totalSeconds; i >= 0; i--)
            {
                UpdateGameCountdownForAllConnectedProfiles(i);
                Thread.Sleep(1000); // Simulate time passing

                if (selectedCrosswordCompleted)
                {
                    break;
                }

                if (i == 0)
                {
                    selectedCrosswordCompleted = true;
                    ShowTimesUpTextToAllConnectedProfiles();
                }
            }

            if (crosswordsPlayed == 3)
            {
                OpenWinnersViewToAllConnectedProfiles();
            }
            else
            {
                OpenRandomMultiplayerCrosswordGeneratorViewToAllConnectedProfiles();
            }
        }

        public void StartGlobalCountdown(int totalSeconds)
        {
            for (int i = totalSeconds; i >= 0; i--)
            {
                UpdateGlobalCountdownForAllConnectedProfiles(i);
                Thread.Sleep(1000);
            }

            ShowGoTextToAllConnectedProfiles();
            ShowTheSelectedCrosswordAndItsQustionsToAllConnectedProfiles();
        }

        public void UpdateCrosswordsToProfilesToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.UpdateCrossword();
            }
        }
        #endregion



        #region Auxiliary methods
        private void OpenRandomMultiplayerCrosswordGeneratorViewToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.OpenRandomMultiplayerCrosswordGeneratorView();
            }
        }

        private void OpenWinnersViewToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.OpenWinnersView();
            }
        }

        private void ShowGoTextToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.ShowGoText();
            }

            Thread.Sleep(1000);
        }

        private void ShowTheSelectedCrosswordAndItsQustionsToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.ShowTheSelectedCrosswordAndItsQustions();
            }
        }

        private void ShowTimesUpTextToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.ShowTimesUpText();
            }

            Thread.Sleep(3000);
        }

        private void UpdateGameCountdownForAllConnectedProfiles(int seconds)
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.UpdateGameCountdown(seconds);
            }
        }

        private void UpdateGlobalCountdownForAllConnectedProfiles(int seconds)
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.UpdateGlobalCountdown(seconds);
            }
        }

        private void UpdateProfilesPointsListsForAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.UpdateProfilesPoints();
            }
        }
        #endregion



        #region Methods for use by ServiceMultiplayerCrosswordForNonCallbackMethods
        internal string GetAdmin()
        {
            return admin;
        }

        internal List<String> GetConnectedProfiles()
        {
            List<String> connectedProfilesList = new List<string>();
            foreach (var connectedProfile in connectedProfiles.Keys)
            {
                connectedProfilesList.Add(connectedProfile);
            }

            return connectedProfilesList;
        }

        internal int GetCrosswordNumberSelected()
        {
            return crosswordNumberSelected;
        }

        internal int GetCrosswordsPlayed()
        {
            return crosswordsPlayed;
        }

        internal int GetPointsFromAProfile(string nickname)
        {
            return profilesAndItsPoints[nickname];
        }

        internal void SetAdmin(string username)
        {
            admin = username;
        }

        internal void SetTheCrosswordIsComplete()
        {
            selectedCrosswordCompleted = true;
        }

        internal void SetTheCrosswordIsNotComplete()
        {
            selectedCrosswordCompleted = false;
        }
        #endregion



        #region Auxiliary methods for do the tests

        #endregion
    }
}
