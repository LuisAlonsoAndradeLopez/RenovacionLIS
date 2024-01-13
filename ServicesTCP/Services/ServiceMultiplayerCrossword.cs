using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.ServiceModel;
using System.Threading;
using System.Threading.Tasks;
using ServicesTCP.AuxiliaryContracts;
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
        public void ClearAnsweredWordsList()
        {
            serviceMultiplayerCrosswordForCallbackMethods.ClearAnsweredWordsList();
        }

        public string GetAdmin()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetAdmin();
        }

        public List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> GetAllProfilesAndItsPoints()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetAllProfilesAndItsPoints();
        }

        public List<String> GetConnectedProfiles()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetConnectedProfiles();
        }

        public int GetCrosswordNumberSelected()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetCrosswordNumberSelected();
        }

        public int GetCrosswordsPlayed()
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetCrosswordsPlayed();
        }

        public int GetPointsFromAProfile(string nickname)
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetPointsFromAProfile(nickname);
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

        public bool TheWordIsAnswered(string word)
        {
            return serviceMultiplayerCrosswordForCallbackMethods.TheWordIsAnswered(word);
        }
        #endregion



        #region Auxiliary methods for do the tests
        #endregion
    }



    public class ServiceMultiplayerCrosswordForCallbackMethods : IMultiplayerCrosswordCallbackMethods
    {
        private static string admin;
        private static readonly Dictionary<string, IMultiplayerCrosswordCallback> connectedProfiles = new Dictionary<string, IMultiplayerCrosswordCallback>();
        private static readonly Dictionary<string, int> profilesAndItsPoints = new Dictionary<string, int>();
        private static readonly int[] crosswordsPlayedNumbers = new int[3];
        private static int crosswordsPlayed = 0;
        private static int crosswordNumberSelected;
        private static bool selectedCrosswordCompleted = false;
        private static List<string> answeredWordsOfTheSelectedCrossword = new List<string>();
        private CancellationTokenSource cancellationTokenSource;



        #region Callback methods
        public void AddCompletedWordToAllConnectedProfilesCrosswords(string word, string answer)
        {
            answeredWordsOfTheSelectedCrossword.Add(word);

            foreach (var profile in connectedProfiles.Values)
            {
                profile.UpdateCrossword(word, answer);
            }
        }

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

            UpdateProfilesPointsListsForAllConnectedProfiles();

            if (connectedProfiles.Count == 1 || profilesAndItsPoints.Count == 1)
            {
                ExpeltProfileForTheGameForBeingAlone();
            }

            if (connectedProfiles.Count == 0 || profilesAndItsPoints.Count == 0)
            {
                ServiceLobbyForNonCallbackMethods serviceLobbyForNonCallbackMethods = new ServiceLobbyForNonCallbackMethods();
                serviceLobbyForNonCallbackMethods.SetThePlayersAreNotInGame();
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

        public void ExpeltProfileForTheGameForBeingAlone()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.ExpeltProfileToTheLobbyViewForBeingAlone();
            }

            ServiceLobbyForNonCallbackMethods serviceLobbyForNonCallbackMethods = new ServiceLobbyForNonCallbackMethods();
            serviceLobbyForNonCallbackMethods.SetThePlayersAreNotInGame();
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
            cancellationTokenSource = new CancellationTokenSource();

            Task.Run(async () => await CountdownAsync(totalSeconds, cancellationTokenSource.Token));
        }

        public void StartGlobalCountdown(int totalSeconds)
        {
            for (int i = totalSeconds; i >= 1; i--)
            {
                UpdateGlobalCountdownForAllConnectedProfiles(i);
                Thread.Sleep(1000);
            }

            ShowGoTextToAllConnectedProfiles();
            ShowTheSelectedCrosswordAndItsQustionsToAllConnectedProfiles();
        }
        #endregion



        #region Auxiliary methods
        private async Task CountdownAsync(int totalSeconds, CancellationToken cancellationToken)
        {
            for (int i = totalSeconds; i >= 0; i--)
            {
                if (cancellationToken.IsCancellationRequested)
                {
                    break;
                }

                UpdateGameCountdownForAllConnectedProfiles(i);
                await Task.Delay(1000);

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
        internal void ClearAnsweredWordsList()
        {
            answeredWordsOfTheSelectedCrossword.Clear();
        }

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

        internal List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> GetAllProfilesAndItsPoints()
        {
            List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> profilesAndItsPointsForTransport = new List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword>();

            foreach (var profileAndItsPoints in profilesAndItsPoints)
            {
                DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword dictionary = new DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
                {
                    Key = profileAndItsPoints.Key,
                    Value = profileAndItsPoints.Value
                };

                profilesAndItsPointsForTransport.Add(dictionary);
            }
            return profilesAndItsPointsForTransport;
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

        internal bool TheWordIsAnswered(string word)
        {
            return answeredWordsOfTheSelectedCrossword.Contains(word);
        }
        #endregion



        #region Auxiliary methods for do the tests

        #endregion
    }
}
