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

    public class ServiceFriendRequestForNonCallbackMethods : IFriendRequestNonCallbackMethods
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

                    Player playerProfile = new Player
                    {
                        IDPlayer = friendRequests.Profiles.Players.IDPlayer,
                        Names = friendRequests.Profiles.Players.Names,
                        Surnames = friendRequests.Profiles.Players.Surnames,
                        Email = friendRequests.Profiles.Players.Email,
                        NickName = friendRequests.Profiles.Players.NickName,
                        BirthDate = friendRequests.Profiles.Players.BirthDate
                    };

                    Player playerProfile1 = new Player
                    {
                        IDPlayer = friendRequests.Profiles1.Players.IDPlayer,
                        Names = friendRequests.Profiles1.Players.Names,
                        Surnames = friendRequests.Profiles1.Players.Surnames,
                        Email = friendRequests.Profiles1.Players.Email,
                        NickName = friendRequests.Profiles1.Players.NickName,
                        BirthDate = friendRequests.Profiles1.Players.BirthDate
                    };

                    Profile profile = new Profile
                    {
                        IDProfile = friendRequests.Profiles.IDProfile,
                        Coins = (long)friendRequests.Profiles.Coins,
                        LoginStatus = friendRequests.Profiles.LoginStatus,
                        Player = playerProfile
                    };

                    Profile profile1 = new Profile
                    {
                        IDProfile = friendRequests.Profiles1.IDProfile,
                        Coins = (long)friendRequests.Profiles1.Coins,
                        LoginStatus = friendRequests.Profiles1.LoginStatus,
                        Player = playerProfile1
                    };

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

                Player playerProfile = new Player
                {
                    IDPlayer = friendRequests.Profiles.Players.IDPlayer,
                    Names = friendRequests.Profiles.Players.Names,
                    Surnames = friendRequests.Profiles.Players.Surnames,
                    Email = friendRequests.Profiles.Players.Email,
                    NickName = friendRequests.Profiles.Players.NickName,
                    BirthDate = friendRequests.Profiles.Players.BirthDate
                };

                Player playerProfile1 = new Player
                {
                    IDPlayer = friendRequests.Profiles1.Players.IDPlayer,
                    Names = friendRequests.Profiles1.Players.Names,
                    Surnames = friendRequests.Profiles1.Players.Surnames,
                    Email = friendRequests.Profiles1.Players.Email,
                    NickName = friendRequests.Profiles1.Players.NickName,
                    BirthDate = friendRequests.Profiles1.Players.BirthDate
                };

                Profile profile = new Profile
                {
                    IDProfile = friendRequests.Profiles.IDProfile,
                    Coins = (long)friendRequests.Profiles.Coins,
                    LoginStatus = friendRequests.Profiles.LoginStatus,
                    Player = playerProfile
                };

                Profile profile1 = new Profile
                {
                    IDProfile = friendRequests.Profiles1.IDProfile,
                    Coins = (long)friendRequests.Profiles1.Coins,
                    LoginStatus = friendRequests.Profiles1.LoginStatus,
                    Player = playerProfile1
                };

                FriendRequest friendRequest = new FriendRequest
                {
                    IDFriendRequest = friendRequests.IDFriendRequest,
                    CreationDate = friendRequests.CreationDate,
                    Message = friendRequests.Message,
                    AceptationStatus = friendRequests.AceptationStatus,
                    SendingStatus = friendRequests.SendingStatus,
                    Profile = profile,
                    Profile1 = profile1
                };

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

                    ServiceProfileForNonCallbackMethods serviceProfileForNonCallbackMethods = new ServiceProfileForNonCallbackMethods();
                    serviceProfileForNonCallbackMethods.AddFriendship(friendRequests.Profiles, friendRequests.Profiles1);

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
    public class ServiceFriendRequestForCallbackMethods : IFriendRequestCallbackMethods
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
