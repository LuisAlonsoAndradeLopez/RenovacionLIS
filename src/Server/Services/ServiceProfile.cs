using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using System.Linq;
using System.ServiceModel;
using Server.AuxiliaryDataContracts;
using Server.DatabaseManager;
using Server.Domain;
using Server.DomainStatuses;
using Server.ServiceContracts;

namespace Server.Services
{
    public class ServiceProfileForNonCallbackMethods : IProfileNonCallbackMethods
    {        
        public long AddProfile(ProfilesSet profilesSet)
        {
            long generatedID = 0;

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                renovaciónLISDatabase.ProfilesSet.Add(profilesSet);
                renovaciónLISDatabase.SaveChanges();
                generatedID = profilesSet.IDProfile;
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

            return generatedID;
        }

        public long AddScoreToProfile(long profileID, int score)
        {
            long successStatus = 0;
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                ProfilesSet profileToModify = renovaciónLISDatabase.ProfilesSet.Find(profileID);
                if (profileToModify != null)
                {
                    profileToModify.Score += score;

                    renovaciónLISDatabase.SaveChanges();

                    successStatus++;
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

            return successStatus;
        }

        public void ChangeLoginStatus(ProfileLoginStatuses profileLoginStatus, long profileID)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                ProfilesSet profileToModify = renovaciónLISDatabase.ProfilesSet.Find(profileID);
                if (profileToModify != null)
                {
                    profileToModify.LoginStatus = profileLoginStatus.ToString();

                    renovaciónLISDatabase.SaveChanges();
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

        public List<Profile> GetFriends(long profileID)
        {
            List<Profile> profileList = new List<Profile>();
            ProfilesSet profilesSet = new ProfilesSet();
            ICollection<ProfilesSet> profilesHasSet = new HashSet<ProfilesSet>();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                profilesSet = renovaciónLISDatabase.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

                if (profilesSet != null)
                {
                    profilesHasSet = profilesSet.ProfilesSet2;

                    foreach (ProfilesSet p in profilesHasSet)
                    {
                        Player profilePlayer = new Player
                        {
                            IDPlayer = p.PlayersSet.IDPlayer,
                            Names = p.PlayersSet.Names,
                            Surnames = p.PlayersSet.Surnames,
                            Email = p.PlayersSet.Email,
                            NickName = p.PlayersSet.NickName,
                            BirthDate = p.PlayersSet.BirthDate
                        };

                        Profile profile = new Profile
                        {
                            IDProfile = p.IDProfile,
                            Score = (long)p.Score,
                            LoginStatus = p.LoginStatus,
                            ProfileImage = p.ProfileImage,
                            Player = profilePlayer
                        };

                        profileList.Add(profile);
                    }
                }
                else
                {
                    profileList = null;
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

            return profileList;
        }

        public Profile GetProfileByID(long profileID)
        {
            Profile profile = new Profile();
            Player player = new Player();
            ProfilesSet profilesSet = new ProfilesSet();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                profilesSet = renovaciónLISDatabase.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

                if (profilesSet != null)
                {
                    player.IDPlayer = profilesSet.PlayersSet.IDPlayer;
                    player.Names = profilesSet.PlayersSet.Names;
                    player.Surnames = profilesSet.PlayersSet.Surnames;
                    player.Email = profilesSet.PlayersSet.Email;
                    player.NickName = profilesSet.PlayersSet.NickName;
                    player.BirthDate = profilesSet.PlayersSet.BirthDate;
                    player.Password = profilesSet.PlayersSet.Password;

                    profile.IDProfile = profilesSet.IDProfile;
                    profile.Score = (long)profilesSet.Score;
                    profile.LoginStatus = profilesSet.LoginStatus;
                    profile.ProfileImage = profilesSet.ProfileImage;

                    profile.Player = player;
                }
                else
                {
                    profile = null;
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

            return profile;
        }

        public List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> GetAllProfilesAndItsScore()
        {
            List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> profilesAndItsPointsForTransport = new List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword>();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                List<ProfilesSet> profilesList = renovaciónLISDatabase.ProfilesSet.ToList();                

                foreach (var profileAndItsPoints in profilesList)
                {
                    DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword dictionary = new DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
                    {
                        Key = profileAndItsPoints.PlayersSet.NickName,
                        Value = (int)profileAndItsPoints.Score
                    };

                    profilesAndItsPointsForTransport.Add(dictionary);
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

            return profilesAndItsPointsForTransport;
        }

        public string GetImageByPlayerNickname(string playerNickname)
        {
            ProfilesSet profilesSet = new ProfilesSet();
            string profileImage = "";

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                profilesSet = renovaciónLISDatabase.ProfilesSet.Where(e => e.PlayersSet.NickName == playerNickname).FirstOrDefault();

                if (profilesSet != null)
                {
                    profileImage = profilesSet.ProfileImage;
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

            return profileImage;
        }

        public Profile GetProfileByPlayerID(long playerID)
        {
            Profile profile = new Profile();
            Player player = new Player();
            ProfilesSet profilesSet = new ProfilesSet();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                profilesSet = renovaciónLISDatabase.ProfilesSet.Where(e => e.PlayersSet.IDPlayer == playerID).FirstOrDefault();

                if (profilesSet != null)
                {
                    player.IDPlayer = profilesSet.PlayersSet.IDPlayer;
                    player.Names = profilesSet.PlayersSet.Names;
                    player.Surnames = profilesSet.PlayersSet.Surnames;
                    player.Email = profilesSet.PlayersSet.Email;
                    player.NickName = profilesSet.PlayersSet.NickName;
                    player.BirthDate = profilesSet.PlayersSet.BirthDate;
                    player.Password = profilesSet.PlayersSet.Password;

                    profile.IDProfile = profilesSet.IDProfile;
                    profile.Score = (long)profilesSet.Score;
                    profile.LoginStatus = profilesSet.LoginStatus;
                    profile.ProfileImage = profilesSet.ProfileImage;

                    profile.Player = player;
                }
                else
                {
                    profile = null;
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

            return profile;
        }

        public Profile GetProfileByPlayerNickname(string nickname)
        {
            Profile profile = new Profile();
            Player player = new Player();
            ProfilesSet profilesSet = new ProfilesSet();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                profilesSet = renovaciónLISDatabase.ProfilesSet.Where(e => e.PlayersSet.NickName == nickname).FirstOrDefault();

                if (profilesSet != null)
                {
                    player.IDPlayer = profilesSet.PlayersSet.IDPlayer;
                    player.Names = profilesSet.PlayersSet.Names;
                    player.Surnames = profilesSet.PlayersSet.Surnames;
                    player.Email = profilesSet.PlayersSet.Email;
                    player.NickName = profilesSet.PlayersSet.NickName;
                    player.BirthDate = profilesSet.PlayersSet.BirthDate;
                    player.Password = profilesSet.PlayersSet.Password;

                    profile.IDProfile = profilesSet.IDProfile;
                    profile.Score = (long)profilesSet.Score;
                    profile.LoginStatus = profilesSet.LoginStatus;
                    profile.ProfileImage = profilesSet.ProfileImage;

                    profile.Player = player;

                }
                else
                {
                    profile = null;
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

            return profile;
        }

        public void ModifyProfileImage(long profileID, string newProfileImage)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                ProfilesSet profileToModify = renovaciónLISDatabase.ProfilesSet.FirstOrDefault(e => e.IDProfile == profileID);

                if (profileToModify != null)
                {
                    profileToModify.ProfileImage = newProfileImage;
                }

                renovaciónLISDatabase.SaveChanges();
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

        public bool TheProfileIsLogged(long profileID)
        {
            ProfilesSet profilesSet = new ProfilesSet();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                profilesSet = renovaciónLISDatabase.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

                if (profilesSet.LoginStatus == Enum.GetName(typeof(ProfileLoginStatuses), ProfileLoginStatuses.Logged))
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

        public void AddFriendship(ProfilesSet profilesSet, ProfilesSet profilesSet1)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();

                string sqlQuery = "INSERT INTO ProfilesProfiles (Profiles2_IDProfile, Profiles1_IDProfile) VALUES (@IDProfile, @IDProfile1)";

                var parameter1 = new SqlParameter("IDProfile", profilesSet.IDProfile);
                var parameter2 = new SqlParameter("IDProfile1", profilesSet1.IDProfile);

                renovaciónLISDatabase.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                renovaciónLISDatabase.SaveChanges();

                parameter1 = new SqlParameter("IDProfile", profilesSet1.IDProfile);
                parameter2 = new SqlParameter("IDProfile1", profilesSet.IDProfile);

                renovaciónLISDatabase.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                renovaciónLISDatabase.SaveChanges();

                ServiceProfileForCallbackMethods serviceProfileForCallbackMethods = new ServiceProfileForCallbackMethods();
                serviceProfileForCallbackMethods.UpdateFriendsListsToAllConnectedClients();
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

        public void CancelFriendship(ProfilesSet profilesSet, ProfilesSet profilesSet1)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();

                string sqlQuery = "DELETE FROM ProfilesProfiles WHERE Profiles2_IDProfile = @IDProfile AND Profiles1_IDProfile = @IDProfile1";

                var parameter1 = new SqlParameter("IDProfile", profilesSet.IDProfile);
                var parameter2 = new SqlParameter("IDProfile1", profilesSet1.IDProfile);

                renovaciónLISDatabase.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                renovaciónLISDatabase.SaveChanges();

                parameter1 = new SqlParameter("IDProfile", profilesSet1.IDProfile);
                parameter2 = new SqlParameter("IDProfile1", profilesSet.IDProfile);

                renovaciónLISDatabase.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                renovaciónLISDatabase.SaveChanges();


                ServiceProfileForCallbackMethods serviceProfileForCallbackMethods = new ServiceProfileForCallbackMethods();
                serviceProfileForCallbackMethods.UpdateFriendsListsToAllConnectedClients();
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


        //Only for use in the tests
        public void DeleteProfile(long playerID)
        {
            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                ProfilesSet playerToDelete = renovaciónLISDatabase.ProfilesSet.Where(e => e.IDProfile == playerID).FirstOrDefault();

                renovaciónLISDatabase.ProfilesSet.Remove(playerToDelete);
                renovaciónLISDatabase.SaveChanges();
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



    public partial class ServiceProfileForCallbackMethods : IProfileCallbackMethods
    {
        public static Dictionary<string, IProfileCallback> connectedProfiles = new Dictionary<string, IProfileCallback>();


        #region Callback methods
        public void Connect(string username)
        {
            IProfileCallback callback = OperationContext.Current.GetCallbackChannel<IProfileCallback>();

            if (!connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Add(username, callback);
                UpdateFriendsListsToAllConnectedClients();
            }           
        }

        public void Disconnect(string username)
        {
            if (connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Remove(username);
                new ServiceChatForCallbackMethods().LeaveChat(username);
                new ServiceFriendRequestForCallbackMethods().Disconnect(username);
                new ServiceLobbyForCallbackMethods().Disconnect(username);
                new ServiceMultiplayerCrosswordForCallbackMethods().Disconnect(username);

                UpdateFriendsListsToAllConnectedClients();
            }
        }

        public void InviteFriendToTheLobby(string friendNickname)
        {
            if (connectedProfiles.ContainsKey(friendNickname))
            {
               connectedProfiles[friendNickname].OpenPaneForEnterTheLobby();                        
            }
        }

        public void UpdateFriendsListsToAllConnectedClients()
        {
            foreach (var friend in connectedProfiles)
            {
                friend.Value.UpdateFriendsLists();
                friend.Value.UpdateFriendsForInviteLists();
            }
        }
        #endregion



        #region Auxiliary methods for do the tests
        #endregion
    }

}
