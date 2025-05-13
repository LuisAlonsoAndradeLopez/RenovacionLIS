using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlTypes;
using System.IO;
using System.Linq;
using System.ServiceModel;
using Server.DatabaseManager;
using Server.Domain;
using Server.DomainStatuses;
using Server.ServiceContracts;

namespace Server.Services
{

    public class ServiceFriendRequestForNonCallbackMethods : IFriendRequestNonCallbackMethods
    {
        public List<FriendRequestsSet> GetFriendsRequestsByProfileID(long ID)
        {
            List<FriendRequestsSet> friendRequests = new List<FriendRequestsSet>();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                friendRequests = renovaciónLISDatabase.FriendRequestsSet.Where(e => e.ProfilesSet.IDProfile == ID).ToList();

            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return friendRequests;
        }

        public List<FriendRequestsSet> GetFriendsRequestsByProfile1ID(long ID)
        {
            List<FriendRequestsSet> friendRequests = new List<FriendRequestsSet>();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                friendRequests = renovaciónLISDatabase.FriendRequestsSet.Where(e => e.ProfilesSet1.IDProfile == ID).ToList();

            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return friendRequests;
        }

        public FriendRequest GetFriendRequestByID(long ID)
        {
            FriendRequestsSet friendRequestsSet = new FriendRequestsSet();
            FriendRequest friendRequest = new FriendRequest();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                friendRequestsSet = renovaciónLISDatabase.FriendRequestsSet.Where(fr => fr.IDFriendRequest == ID).FirstOrDefault();

                if (friendRequestsSet != null)
                {

                    Player playerProfile = new Player
                    {
                        IDPlayer = friendRequestsSet.ProfilesSet.PlayersSet.IDPlayer,
                        Names = friendRequestsSet.ProfilesSet.PlayersSet.Names,
                        Surnames = friendRequestsSet.ProfilesSet.PlayersSet.Surnames,
                        Email = friendRequestsSet.ProfilesSet.PlayersSet.Email,
                        NickName = friendRequestsSet.ProfilesSet.PlayersSet.NickName,
                        BirthDate = friendRequestsSet.ProfilesSet.PlayersSet.BirthDate
                    };

                    Player playerProfile1 = new Player
                    {
                        IDPlayer = friendRequestsSet.ProfilesSet1.PlayersSet.IDPlayer,
                        Names = friendRequestsSet.ProfilesSet1.PlayersSet.Names,
                        Surnames = friendRequestsSet.ProfilesSet1.PlayersSet.Surnames,
                        Email = friendRequestsSet.ProfilesSet1.PlayersSet.Email,
                        NickName = friendRequestsSet.ProfilesSet1.PlayersSet.NickName,
                        BirthDate = friendRequestsSet.ProfilesSet1.PlayersSet.BirthDate
                    };

                    Profile profile = new Profile
                    {
                        IDProfile = friendRequestsSet.ProfilesSet.IDProfile,
                        Score = (long)friendRequestsSet.ProfilesSet.Score,
                        LoginStatus = friendRequestsSet.ProfilesSet.LoginStatus,
                        ProfileImage = friendRequestsSet.ProfilesSet.ProfileImage,
                        Player = playerProfile
                    };

                    Profile profile1 = new Profile
                    {
                        IDProfile = friendRequestsSet.ProfilesSet1.IDProfile,
                        Score = (long)friendRequestsSet.ProfilesSet1.Score,
                        LoginStatus = friendRequestsSet.ProfilesSet1.LoginStatus,
                        ProfileImage = friendRequestsSet.ProfilesSet1.ProfileImage,
                        Player = playerProfile1
                    };

                    friendRequest.IDFriendRequest = friendRequestsSet.IDFriendRequest;
                    friendRequest.CreationDate = friendRequestsSet.CreationDate;
                    friendRequest.Message = friendRequestsSet.Message;
                    friendRequest.AceptationStatus = friendRequestsSet.AceptationStatus;
                    friendRequest.SendingStatus = friendRequestsSet.SendingStatus;
                    friendRequest.Profile = profile;
                    friendRequest.Profile1 = profile1;
                }
                else
                {
                    friendRequest = null;
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return friendRequest;
        }

        public List<FriendRequest> GetPendientsForAceptationFriendsRequestsByProfile1ID(long IDProfile1)
        {
            List<FriendRequest> friendRequestList = new List<FriendRequest>();
            List<FriendRequestsSet> friendRequestsList = new List<FriendRequestsSet>();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                friendRequestsList = renovaciónLISDatabase.FriendRequestsSet
                .Where(fr => fr.ProfilesSet1.IDProfile == IDProfile1)
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
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return friendRequestList;
        }

        public List<FriendRequest> GetSentAndPendientsForAceptationFriendsRequestsByProfileID(long IDProfile)
        {
            List<FriendRequest> friendRequestList = new List<FriendRequest>();
            List<FriendRequestsSet> friendRequestsList = new List<FriendRequestsSet>();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                friendRequestsList = renovaciónLISDatabase.FriendRequestsSet
                .Where(fr => fr.ProfilesSet.IDProfile == IDProfile)
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
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return friendRequestList;
        }


        private List<FriendRequest> FriendRequestsListToFriendRequestListConverter(List<FriendRequestsSet> friendRequestsList)
        {
            List<FriendRequest> friendRequestList = new List<FriendRequest>();

            foreach (FriendRequestsSet friendRequestsSet in friendRequestsList)
            {

                Player playerProfile = new Player
                {
                    IDPlayer = friendRequestsSet.ProfilesSet.PlayersSet.IDPlayer,
                    Names = friendRequestsSet.ProfilesSet.PlayersSet.Names,
                    Surnames = friendRequestsSet.ProfilesSet.PlayersSet.Surnames,
                    Email = friendRequestsSet.ProfilesSet.PlayersSet.Email,
                    NickName = friendRequestsSet.ProfilesSet.PlayersSet.NickName,
                    BirthDate = friendRequestsSet.ProfilesSet.PlayersSet.BirthDate
                };

                Player playerProfile1 = new Player
                {
                    IDPlayer = friendRequestsSet.ProfilesSet1.PlayersSet.IDPlayer,
                    Names = friendRequestsSet.ProfilesSet1.PlayersSet.Names,
                    Surnames = friendRequestsSet.ProfilesSet1.PlayersSet.Surnames,
                    Email = friendRequestsSet.ProfilesSet1.PlayersSet.Email,
                    NickName = friendRequestsSet.ProfilesSet1.PlayersSet.NickName,
                    BirthDate = friendRequestsSet.ProfilesSet1.PlayersSet.BirthDate
                };

                Profile profile = new Profile
                {
                    IDProfile = friendRequestsSet.ProfilesSet.IDProfile,
                    Score = (long)friendRequestsSet.ProfilesSet.Score,
                    LoginStatus = friendRequestsSet.ProfilesSet.LoginStatus,
                    ProfileImage = friendRequestsSet.ProfilesSet.ProfileImage,
                    Player = playerProfile
                };

                Profile profile1 = new Profile
                {
                    IDProfile = friendRequestsSet.ProfilesSet1.IDProfile,
                    Score = (long)friendRequestsSet.ProfilesSet1.Score,
                    LoginStatus = friendRequestsSet.ProfilesSet1.LoginStatus,
                    ProfileImage = friendRequestsSet.ProfilesSet1.ProfileImage,
                    Player = playerProfile1
                };

                FriendRequest friendRequest = new FriendRequest
                {
                    IDFriendRequest = friendRequestsSet.IDFriendRequest,
                    CreationDate = friendRequestsSet.CreationDate,
                    Message = friendRequestsSet.Message,
                    AceptationStatus = friendRequestsSet.AceptationStatus,
                    SendingStatus = friendRequestsSet.SendingStatus,
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
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                FriendRequestsSet friendRequestsSet = renovaciónLISDatabase.FriendRequestsSet.Where(fr => fr.ProfilesSet.IDProfile == transmitterProfileID)
                    .Where(fr => fr.ProfilesSet1.IDProfile == receiverProfileID)
                    .Where(fr => fr.AceptationStatus == FriendRequestAceptationStatuses.Pendient.ToString())
                    .Where(fr => fr.SendingStatus == FriendRequestSendingStatuses.Sent.ToString())
                    .FirstOrDefault();
                if (friendRequestsSet != null)
                {
                    return true;
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return false;
        }

        public bool TheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile(long transmitterProfileID, long senderProfileID)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                FriendRequestsSet friendRequestsSet = renovaciónLISDatabase.FriendRequestsSet.Where(fr => fr.ProfilesSet.IDProfile == senderProfileID)
                    .Where(fr => fr.ProfilesSet1.IDProfile == transmitterProfileID)
                    .Where(fr => fr.AceptationStatus == FriendRequestAceptationStatuses.Pendient.ToString())
                    .Where(fr => fr.SendingStatus == FriendRequestSendingStatuses.Sent.ToString())
                    .FirstOrDefault();
                if (friendRequestsSet != null)
                {
                    return true;
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return false;
        }



        public void AddFriendRequest(FriendRequestsSet friendRequestsSet)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                renovaciónLISDatabase.Entry(friendRequestsSet).State = EntityState.Unchanged;
                renovaciónLISDatabase.FriendRequestsSet.Add(friendRequestsSet);
                renovaciónLISDatabase.SaveChanges();


                ServiceFriendRequestForCallbackMethods serviceFriendRequestForCallbackMethods = new ServiceFriendRequestForCallbackMethods();
                serviceFriendRequestForCallbackMethods.UpdateFriendRequestsListsToAllConnectedClients();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }

        public void AcceptFriendRequest(FriendRequestsSet friendRequestsSet)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                FriendRequestsSet friendRequestsToModify = renovaciónLISDatabase.FriendRequestsSet.Find(friendRequestsSet.IDFriendRequest);
                if (friendRequestsToModify != null)
                {
                    friendRequestsToModify.AceptationStatus = Enum.GetName(typeof(FriendRequestAceptationStatuses), FriendRequestAceptationStatuses.Accepted);
                    renovaciónLISDatabase.SaveChanges();

                    ServiceProfileForNonCallbackMethods serviceProfileForNonCallbackMethods = new ServiceProfileForNonCallbackMethods();
                    serviceProfileForNonCallbackMethods.AddFriendship(friendRequestsSet.ProfilesSet, friendRequestsSet.ProfilesSet1);

                    ServiceFriendRequestForCallbackMethods serviceFriendRequestForCallbackMethods = new ServiceFriendRequestForCallbackMethods();
                    serviceFriendRequestForCallbackMethods.UpdateFriendRequestsListsToAllConnectedClients();
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }

        public void CancelFriendRequest(FriendRequestsSet friendRequestsSet)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                FriendRequestsSet friendRequestsToModify = renovaciónLISDatabase.FriendRequestsSet.Find(friendRequestsSet.IDFriendRequest);
                if (friendRequestsToModify != null)
                {
                    friendRequestsToModify.SendingStatus = Enum.GetName(typeof(FriendRequestSendingStatuses), FriendRequestSendingStatuses.Canceled);
                    renovaciónLISDatabase.SaveChanges();


                    ServiceFriendRequestForCallbackMethods serviceFriendRequestForCallbackMethods = new ServiceFriendRequestForCallbackMethods();
                    serviceFriendRequestForCallbackMethods.UpdateFriendRequestsListsToAllConnectedClients();
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }

        public void RejectFriendRequest(FriendRequestsSet friendRequestsSet)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                FriendRequestsSet friendRequestsToModify = renovaciónLISDatabase.FriendRequestsSet.Find(friendRequestsSet.IDFriendRequest);
                if (friendRequestsToModify != null)
                {
                    friendRequestsToModify.AceptationStatus = FriendRequestAceptationStatuses.Rejected.ToString();
                    renovaciónLISDatabase.SaveChanges();

                    ServiceFriendRequestForCallbackMethods serviceFriendRequestForCallbackMethods = new ServiceFriendRequestForCallbackMethods();
                    serviceFriendRequestForCallbackMethods.UpdateFriendRequestsListsToAllConnectedClients();
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
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
