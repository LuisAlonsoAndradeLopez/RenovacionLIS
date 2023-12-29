using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Threading;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceMultiplayerCrossword : IMultiplayerCrossword
    {
        public static String admin;
        public static Dictionary<string, IMultiplayerCrosswordCallback> connectedProfiles = new Dictionary<string, IMultiplayerCrosswordCallback>();
        public static Dictionary<string, int> profilesAndItsPoints = new Dictionary<string, int>();
        public static bool thePlayersAreInGame = false;

        //IsOneWay = true methods
        public void addPointsToProfile(string userNickname, int points)
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

        public void SetAdmin(string username)
        {
            admin = username;
        }

        // Example method to start the countdown
        public void StartCountdown(int totalSeconds)
        {
            for (int i = totalSeconds; i >= 0; i--)
            {
                UpdateCountdownForAllConnectedProfiles(i);
                Thread.Sleep(1000); // Simulate time passing
            }
        }

        public void UpdateCrosswordsToProfilesToAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.UpdateCrossword();
            }
        }



        //Auxiliary methods
        // Method to update countdown for all subscribers
        private void UpdateCountdownForAllConnectedProfiles(int seconds)
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.UpdateCountdown(seconds);
            }
        }

        private void UpdateProfilesPointsListsForAllConnectedProfiles()
        {
            foreach (var profile in connectedProfiles.Values)
            {
                profile.UpdateProfilesPoints();
            }
        }
    }
}
