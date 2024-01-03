using System;
using System.Collections.Generic;
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
        
        public int GetPointsFromAProfile(string nickname)
        {
            return serviceMultiplayerCrosswordForCallbackMethods.GetPointsFromAProfile(nickname);
        }
        
        public void SetAdmin(string username)
        {
            serviceMultiplayerCrosswordForCallbackMethods.SetAdmin(username);
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
        #endregion



        #region Auxiliary methods
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
        #endregion



        #region Methods for use by ServiceMultiplayerCrosswordForNonCallbackMethods
        internal string GetAdmin()
        {
            return admin;
        }

        internal int GetPointsFromAProfile(string nickname)
        {
            return profilesAndItsPoints[nickname];
        }

        internal void SetAdmin(string username)
        {
            admin = username;
        }
        #endregion



        #region Auxiliary methods for do the tests

        #endregion
    }
}
