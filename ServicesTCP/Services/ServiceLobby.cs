using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceLobbyForNonCallbackMethods : ILobbyNonCallbackMethods
    {
        private readonly ServiceLobbyForCallbackMethods serviceLobbyForCallbackMethods;


        #region Constructors
        public ServiceLobbyForNonCallbackMethods()
        {
            serviceLobbyForCallbackMethods = new ServiceLobbyForCallbackMethods();
        }
        #endregion



        #region Non-Callback methods
        public string GetAdmin()
        {
            return serviceLobbyForCallbackMethods.GetAdmin();
        }

        public List<String> GetBannedProfiles()
        {
            return serviceLobbyForCallbackMethods.GetBannedProfiles();
        }

        public List<String> GetConnectedProfiles()
        {
            return serviceLobbyForCallbackMethods.GetConnectedProfiles();
        }

        public bool IsAdmin(string nickname)
        {
            return serviceLobbyForCallbackMethods.IsAdmin(nickname);
        }

        public bool IsBanned(string nickname)
        {
            return serviceLobbyForCallbackMethods.IsBanned(nickname);
        }

        public bool IsConnected(string nickname)
        {
            return serviceLobbyForCallbackMethods.IsConnected(nickname);
        }

        public void SetThePlayersAreInGame()
        {
            serviceLobbyForCallbackMethods.SetThePlayersAreInGame();
        }

        public void SetThePlayersAreNotInGame()
        {
            serviceLobbyForCallbackMethods.SetThePlayersAreNotInGame();
        }

        public bool ThePlayersAreInGame()
        {
            return serviceLobbyForCallbackMethods.ThePlayersAreInGame();
        }
        #endregion



        #region Auxiliary methods for do the tests
        #endregion
    }



    public partial class ServiceLobbyForCallbackMethods : ILobbyCallbackMethods
    {
        private static string admin;
        private static readonly List<string> bannedProfiles = new List<string>();
        private static readonly Dictionary<string, ILobbyCallback> connectedProfiles = new Dictionary<string, ILobbyCallback>();
        private static bool thePlayersAreInGame = false;


        #region Callback methods
        public void BanPlayer(string username)
        {
            if (connectedProfiles.ContainsKey(username))
            {
                if (!bannedProfiles.Contains(username))
                {
                    connectedProfiles[username].ExpelPlayerFromMultiplayerGame();
                    bannedProfiles.Add(username);
                    connectedProfiles.Remove(username);
                    UpdateBannedProfilesListsToAllConnectedClients();
                    UpdateConnectedProfilesListsToAllConnectedClients();
                    UpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients();
                }
            }
        }

        public void Connect(string username)
        {
            ILobbyCallback callback = OperationContext.Current.GetCallbackChannel<ILobbyCallback>();

            if (!connectedProfiles.ContainsKey(username))
            {
                if (!connectedProfiles.Any())
                {
                    admin = username;
                }


                connectedProfiles.Add(username, callback);
                UpdateConnectedProfilesListsToAllConnectedClients();
                UpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients();
            }
        }

        public void Disconnect(string username)
        {
            if (connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Remove(username);

                if (connectedProfiles.Any())
                {
                    admin = connectedProfiles.Keys.First();
                }
                else
                {
                    bannedProfiles.Clear();
                }

                UpdateConnectedProfilesListsToAllConnectedClients();
                UpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients();
            }
        }

        public void SetAdmin(string username)
        {
            admin = username;
            UpdateConnectedProfilesListsToAllConnectedClients();
        }

        public void UnbanPlayer(string username)
        {
            if (bannedProfiles.Contains(username))
            {
                bannedProfiles.Remove(username);
                UpdateBannedProfilesListsToAllConnectedClients();
                UpdateConnectedProfilesListsToAllConnectedClients();
            }
        }
        #endregion



        #region Auxiliary methods
        private void UpdateBannedProfilesListsToAllConnectedClients()
        {
            foreach (var multiplayerGameCallback in connectedProfiles.Values)
            {
                multiplayerGameCallback.UpdateBannedProfilesLists();
            }
        }

        private void UpdateConnectedProfilesListsToAllConnectedClients()
        {
            foreach (var multiplayerGameCallback in connectedProfiles.Values)
            {
                multiplayerGameCallback.UpdateConnectedProfilesLists();
            }
        }

        private void UpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients()
        {
            foreach (var multiplayerGameCallback in connectedProfiles.Values)
            {
                multiplayerGameCallback.UpdateConnectedProfilesForInviteToLobbyLists();
            }
        }
        #endregion



        #region Methods for use in ServiceLobbyForNonCallbackMethods
        internal string GetAdmin()
        {
            return admin;
        }

        internal List<String> GetBannedProfiles()
        {
            return bannedProfiles;
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

        internal bool IsAdmin(string nickname)
        {
            return admin != null && nickname == admin;
        }

        internal bool IsBanned(string nickname)
        {
            return bannedProfiles.Contains(nickname);
        }

        internal bool IsConnected(string nickname)
        {
            return connectedProfiles.ContainsKey(nickname);
        }

        internal void SetThePlayersAreInGame()
        {
            thePlayersAreInGame = true;
        }

        internal void SetThePlayersAreNotInGame()
        {
            thePlayersAreInGame = false;
        }

        internal bool ThePlayersAreInGame()
        {
            return thePlayersAreInGame;
        }
        #endregion



        #region Auxiliary methods for do the tests
        #endregion
    }
}
