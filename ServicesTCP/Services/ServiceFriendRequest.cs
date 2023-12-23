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

    public class ServiceFriendRequest : IFriendRequest
    {

        public List<FriendRequests> GetFriendsRequestsByProfileID(long ID)
        {
            List<FriendRequests> friendRequests = new List<FriendRequests>();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                friendRequests = databaseModelContainer.FriendRequestsSet.Where(e => e.Profiles.IDProfile == ID).ToList();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return friendRequests;
        }

        public List<FriendRequests> GetFriendsRequestsByProfile1ID(long ID)
        {
            List<FriendRequests> friendRequests = new List<FriendRequests>();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                friendRequests = databaseModelContainer.FriendRequestsSet.Where(e => e.Profiles1.IDProfile == ID).ToList();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return friendRequests;
        }

        public FriendRequest GetFriendRequestByID(long ID)
        {
            FriendRequests friendRequests = new FriendRequests();
            FriendRequest friendRequest = new FriendRequest();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                friendRequests = databaseModelContainer.FriendRequestsSet.Where(fr => fr.IDFriendRequest == ID).FirstOrDefault();

                if (friendRequests != null)
                {

                    Player playerProfile = new Player();
                    playerProfile.IDPlayer = friendRequests.Profiles.Players.IDPlayer;
                    playerProfile.Names = friendRequests.Profiles.Players.Names;
                    playerProfile.Surnames = friendRequests.Profiles.Players.Surnames;
                    playerProfile.Email = friendRequests.Profiles.Players.Email;
                    playerProfile.NickName = friendRequests.Profiles.Players.NickName;
                    playerProfile.BirthDate = friendRequests.Profiles.Players.BirthDate;

                    Player playerProfile1 = new Player();
                    playerProfile1.IDPlayer = friendRequests.Profiles1.Players.IDPlayer;
                    playerProfile1.Names = friendRequests.Profiles1.Players.Names;
                    playerProfile1.Surnames = friendRequests.Profiles1.Players.Surnames;
                    playerProfile1.Email = friendRequests.Profiles1.Players.Email;
                    playerProfile1.NickName = friendRequests.Profiles1.Players.NickName;
                    playerProfile1.BirthDate = friendRequests.Profiles1.Players.BirthDate;

                    Profile profile = new Profile();
                    profile.IDProfile = friendRequests.Profiles.IDProfile;
                    profile.Coins = (long)friendRequests.Profiles.Coins;
                    profile.LoginStatus = friendRequests.Profiles.LoginStatus;
                    profile.Player = playerProfile;

                    Profile profile1 = new Profile();
                    profile1.IDProfile = friendRequests.Profiles1.IDProfile;
                    profile1.Coins = (long)friendRequests.Profiles1.Coins;
                    profile1.LoginStatus = friendRequests.Profiles1.LoginStatus;
                    profile1.Player = playerProfile1;

                    friendRequest.IDFriendRequest = friendRequests.IDFriendRequest;
                    friendRequest.CreationDate = friendRequests.CreationDate;
                    friendRequest.Message = friendRequests.Message;
                    friendRequest.AceptationStatus = friendRequests.AceptationStatus;
                    friendRequest.SendingStatus = friendRequests.SendingStatus;
                    friendRequest.Profile = profile;
                    friendRequest.Profile1 = profile1;
                }
                else
                {
                    friendRequest = null;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return friendRequest;
        }

        public List<FriendRequest> GetPendientsForAceptationFriendsRequestsByProfile1ID(long IDProfile1)
        {
            List<FriendRequest> friendRequestList = new List<FriendRequest>();
            List<FriendRequests> friendRequestsList = new List<FriendRequests>();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                friendRequestsList = databaseModelContainer.FriendRequestsSet
                .Where(fr => fr.Profiles1.IDProfile == IDProfile1)
                .Where(fr => fr.AceptationStatus == FriendRequestAceptationStatuses.Pendient.ToString())
                .Where(fr => fr.SendingStatus == FriendRequestSendingStatuses.Sent.ToString())
                .ToList();

                if (friendRequestsList != null)
                {
                    friendRequestList = FriendRequestsListToFriendRequestListConverter(friendRequestsList);
                }
                else
                {
                    friendRequestList = null;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return friendRequestList;
        }

        public List<FriendRequest> GetSentAndPendientsForAceptationFriendsRequestsByProfileID(long IDProfile)
        {
            List<FriendRequest> friendRequestList = new List<FriendRequest>();
            List<FriendRequests> friendRequestsList = new List<FriendRequests>();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                friendRequestsList = databaseModelContainer.FriendRequestsSet
                .Where(fr => fr.Profiles.IDProfile == IDProfile)
                .Where(fr => fr.AceptationStatus == FriendRequestAceptationStatuses.Pendient.ToString())
                .Where(fr => fr.SendingStatus == FriendRequestSendingStatuses.Sent.ToString())
                .ToList();

                if (friendRequestsList != null)
                {
                    friendRequestList = FriendRequestsListToFriendRequestListConverter(friendRequestsList);
                }
                else
                {
                    friendRequestList = null;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return friendRequestList;
        }


        private List<FriendRequest> FriendRequestsListToFriendRequestListConverter(List<FriendRequests> friendRequestsList)
        {
            List<FriendRequest> friendRequestList = new List<FriendRequest>();

            foreach (FriendRequests friendRequests in friendRequestsList)
            {

                Player playerProfile = new Player();
                playerProfile.IDPlayer = friendRequests.Profiles.Players.IDPlayer;
                playerProfile.Names = friendRequests.Profiles.Players.Names;
                playerProfile.Surnames = friendRequests.Profiles.Players.Surnames;
                playerProfile.Email = friendRequests.Profiles.Players.Email;
                playerProfile.NickName = friendRequests.Profiles.Players.NickName;
                playerProfile.BirthDate = friendRequests.Profiles.Players.BirthDate;

                Player playerProfile1 = new Player();
                playerProfile1.IDPlayer = friendRequests.Profiles1.Players.IDPlayer;
                playerProfile1.Names = friendRequests.Profiles1.Players.Names;
                playerProfile1.Surnames = friendRequests.Profiles1.Players.Surnames;
                playerProfile1.Email = friendRequests.Profiles1.Players.Email;
                playerProfile1.NickName = friendRequests.Profiles1.Players.NickName;
                playerProfile1.BirthDate = friendRequests.Profiles1.Players.BirthDate;

                Profile profile = new Profile();
                profile.IDProfile = friendRequests.Profiles.IDProfile;
                profile.Coins = (long)friendRequests.Profiles.Coins;
                profile.LoginStatus = friendRequests.Profiles.LoginStatus;
                profile.Player = playerProfile;

                Profile profile1 = new Profile();
                profile1.IDProfile = friendRequests.Profiles1.IDProfile;
                profile1.Coins = (long)friendRequests.Profiles1.Coins;
                profile1.LoginStatus = friendRequests.Profiles1.LoginStatus;
                profile1.Player = playerProfile1;

                FriendRequest friendRequest = new FriendRequest();
                friendRequest.IDFriendRequest = friendRequests.IDFriendRequest;
                friendRequest.CreationDate = friendRequests.CreationDate;
                friendRequest.Message = friendRequests.Message;
                friendRequest.AceptationStatus = friendRequests.AceptationStatus;
                friendRequest.SendingStatus = friendRequests.SendingStatus;
                friendRequest.Profile = profile;
                friendRequest.Profile1 = profile1;

                friendRequestList.Add(friendRequest);
            }

            return friendRequestList;
        }

        public bool TheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile(long transmitterProfileID, long receiverProfileID)
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                FriendRequests friendRequests = databaseModelContainer.FriendRequestsSet.Where(fr => fr.Profiles.IDProfile == transmitterProfileID)
                    .Where(fr => fr.Profiles1.IDProfile == receiverProfileID)
                    .Where(fr => fr.AceptationStatus == FriendRequestAceptationStatuses.Pendient.ToString())
                    .Where(fr => fr.SendingStatus == FriendRequestSendingStatuses.Sent.ToString())
                    .FirstOrDefault();
                if (friendRequests != null)
                {
                    return true;                    
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return false;
        }

        public bool TheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile(long transmitterProfileID, long senderProfileID)
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                FriendRequests friendRequests = databaseModelContainer.FriendRequestsSet.Where(fr => fr.Profiles.IDProfile == senderProfileID)
                    .Where(fr => fr.Profiles1.IDProfile == transmitterProfileID)
                    .Where(fr => fr.AceptationStatus == FriendRequestAceptationStatuses.Pendient.ToString())
                    .Where(fr => fr.SendingStatus == FriendRequestSendingStatuses.Sent.ToString())
                    .FirstOrDefault();
                if (friendRequests != null)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return false;
        }



        public void AddFriendRequest(FriendRequests friendRequests)
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                databaseModelContainer.Entry(friendRequests).State = EntityState.Unchanged;
                databaseModelContainer.FriendRequestsSet.Add(friendRequests);
                databaseModelContainer.SaveChanges();


                ServiceFriendRequestForCallbackMethods serviceFriendRequestForCallbackMethods = new ServiceFriendRequestForCallbackMethods();
                serviceFriendRequestForCallbackMethods.UpdateFriendRequestsListsToAllConnectedClients();
            }
            catch (DbEntityValidationException ex)
            {
                foreach (var validationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        Console.WriteLine($"Property: {validationError.PropertyName} Error: {validationError.ErrorMessage}");
                    }
                }
            }
        }

        public void AcceptFriendRequest(FriendRequests friendRequests)
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                FriendRequests friendRequestsToModify = databaseModelContainer.FriendRequestsSet.Find(friendRequests.IDFriendRequest);
                if (friendRequestsToModify != null)
                {
                    friendRequestsToModify.AceptationStatus = Enum.GetName(typeof(FriendRequestAceptationStatuses), FriendRequestAceptationStatuses.Accepted);
                    databaseModelContainer.SaveChanges();

                    ServiceProfile serviceProfile = new ServiceProfile();
                    serviceProfile.AddFriendship(friendRequests.Profiles, friendRequests.Profiles1);

                    ServiceFriendRequestForCallbackMethods serviceFriendRequestForCallbackMethods = new ServiceFriendRequestForCallbackMethods();
                    serviceFriendRequestForCallbackMethods.UpdateFriendRequestsListsToAllConnectedClients();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        public void CancelFriendRequest(FriendRequests friendRequests)
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                FriendRequests friendRequestsToModify = databaseModelContainer.FriendRequestsSet.Find(friendRequests.IDFriendRequest);
                if (friendRequestsToModify != null)
                {
                    friendRequestsToModify.SendingStatus = Enum.GetName(typeof(FriendRequestSendingStatuses), FriendRequestSendingStatuses.Canceled);
                    databaseModelContainer.SaveChanges();


                    ServiceFriendRequestForCallbackMethods serviceFriendRequestForCallbackMethods = new ServiceFriendRequestForCallbackMethods();
                    serviceFriendRequestForCallbackMethods.UpdateFriendRequestsListsToAllConnectedClients();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        public void RejectFriendRequest(FriendRequests friendRequests)
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                FriendRequests friendRequestsToModify = databaseModelContainer.FriendRequestsSet.Find(friendRequests.IDFriendRequest);
                if (friendRequestsToModify != null)
                {
                    friendRequestsToModify.AceptationStatus = FriendRequestAceptationStatuses.Rejected.ToString();
                    databaseModelContainer.SaveChanges();

                    ServiceFriendRequestForCallbackMethods serviceFriendRequestForCallbackMethods = new ServiceFriendRequestForCallbackMethods();
                    serviceFriendRequestForCallbackMethods.UpdateFriendRequestsListsToAllConnectedClients();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
    }

    [CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Multiple, UseSynchronizationContext = false)]
    public class ServiceFriendRequestForCallbackMethods : IFriendRequestForCallbackMethods
    {
        public static Dictionary<string, IFriendRequestCallback> connectedProfiles = new Dictionary<string, IFriendRequestCallback>();
       
        public void Connect(string username)
        {
            IFriendRequestCallback callback = OperationContext.Current.GetCallbackChannel<IFriendRequestCallback>();

            if (!connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Add(username, callback);
            }
        }

        public void Disconnect(string username)
        {
            if (connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Remove(username);
            }
        }

        public void UpdateFriendRequestsListsToAllConnectedClients()
        {
            foreach (var friendRequestCallback in connectedProfiles.Values)
            {
                friendRequestCallback.UpdateFriendsRequestsLists();
            }
        }

    }
}
