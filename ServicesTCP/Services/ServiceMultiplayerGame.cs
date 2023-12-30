using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    //[CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Multiple, UseSynchronizationContext = false)]
    public class ServiceMultiplayerGame : IMultiplayerGame
    {
        public static String admin;
        public static List<string> bannedProfiles = new List<string>();
        public static Dictionary<string, IMultiplayerGameCallback> connectedProfiles = new Dictionary<string, IMultiplayerGameCallback>();
        public static bool thePlayersAreInGame = false;

        //IsOneWay = true methods
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
            IMultiplayerGameCallback callback = OperationContext.Current.GetCallbackChannel<IMultiplayerGameCallback>();

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


        //IsOneWay = false methods
        public List<String> GetBannedProfiles()
        {
             return bannedProfiles;
        }

        public List<String> GetConnectedProfiles()
        {
            List<String> connectedProfilesList = new List<string>();
            foreach (var connectedProfile in connectedProfiles.Keys)
            {
                connectedProfilesList.Add(connectedProfile);
            }

            return connectedProfilesList;
        }

        public bool IsAdmin(string nickname)
        {
            if (admin != null && nickname == admin)
            {
                return true;
            }

            return false;
        }

        public bool IsBanned(string nickname)
        {
            if (bannedProfiles.Contains(nickname))
            {
                return true;
            }

            return false;
        }

        public bool IsConnected(string nickname)
        {
            if (connectedProfiles.ContainsKey(nickname))
            {
                return true;
            }

            return false;
        }

        public void SetThePlayersAreInGame()
        {
            thePlayersAreInGame = true;
        }

        public void SetThePlayersAreNotInGame()
        {
            thePlayersAreInGame = false;
        }

        public bool ThePlayersAreInGame()
        {
            return thePlayersAreInGame;
        }
    }
}
