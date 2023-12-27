using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.ServiceModel;
using DatabaseManager;
using domain;
using DomainStatuses;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
 

    [CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Multiple, UseSynchronizationContext = false)]
    public class ServiceMultiplayerGame : IMultiplayerGame
    {
        public static String admin;
        public static List<string> bannedProfiles = new List<string>();
        public static Dictionary<string, IMultiplayerGameCallback> connectedProfiles = new Dictionary<string, IMultiplayerGameCallback>();

        //IsOneWay = true methods
        public void BanPlayer(string username)
        {
            if (connectedProfiles.ContainsKey(username))
            {
                if (!bannedProfiles.Contains(username))
                {
                    connectedProfiles[username].ExpelPlayerFromLobbyView();
                    bannedProfiles.Add(username);
                    connectedProfiles.Remove(username);
                    UpdateBannedProfilesListsToAllConnectedClients();
                    UpdateConnectedProfilesListsToAllConnectedClients();
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

                UpdateConnectedProfilesListsToAllConnectedClients();
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

        public void UpdateBannedProfilesListsToAllConnectedClients()
        {
            foreach (var multiplayerGameCallback in connectedProfiles.Values)
            {
                multiplayerGameCallback.UpdateBannedProfilesLists();
            }
        }

        public void UpdateConnectedProfilesListsToAllConnectedClients()
        {
            foreach (var multiplayerGameCallback in connectedProfiles.Values)
            {
                multiplayerGameCallback.UpdateConnectedProfilesLists();
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
    }
}
