﻿using System;
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
        public long AddProfile(Profiles profiles)
        {
            long generatedID = 0;

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                renovaciónLISDatabaseContainer.ProfilesSet.Add(profiles);
                renovaciónLISDatabaseContainer.SaveChanges();
                generatedID = profiles.IDProfile;
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return generatedID;
        }

        public long AddScoreToProfile(long profileID, int score)
        {
            long successStatus = 0;
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                Profiles profileToModify = renovaciónLISDatabaseContainer.ProfilesSet.Find(profileID);
                if (profileToModify != null)
                {
                    profileToModify.Score += score;

                    renovaciónLISDatabaseContainer.SaveChanges();

                    successStatus++;
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return successStatus;
        }

        public void ChangeLoginStatus(ProfileLoginStatuses profileLoginStatus, long profileID)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                Profiles profileToModify = renovaciónLISDatabaseContainer.ProfilesSet.Find(profileID);
                if (profileToModify != null)
                {
                    profileToModify.LoginStatus = profileLoginStatus.ToString();

                    renovaciónLISDatabaseContainer.SaveChanges();
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }

        public List<Profile> GetFriends(long profileID)
        {
            List<Profile> profileList = new List<Profile>();
            Profiles profiles = new Profiles();
            ICollection<Profiles> profilesHasSet = new HashSet<Profiles>();

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                profiles = renovaciónLISDatabaseContainer.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

                if (profiles != null)
                {
                    profilesHasSet = profiles.Profiles2;

                    foreach (Profiles p in profilesHasSet)
                    {
                        Player profilePlayer = new Player
                        {
                            IDPlayer = p.Players.IDPlayer,
                            Names = p.Players.Names,
                            Surnames = p.Players.Surnames,
                            Email = p.Players.Email,
                            NickName = p.Players.NickName,
                            BirthDate = p.Players.BirthDate
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
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return profileList;
        }

        public Profile GetProfileByID(long profileID)
        {
            Profile profile = new Profile();
            Player player = new Player();
            Profiles profiles = new Profiles();

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                profiles = renovaciónLISDatabaseContainer.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

                if (profiles != null)
                {
                    player.IDPlayer = profiles.Players.IDPlayer;
                    player.Names = profiles.Players.Names;
                    player.Surnames = profiles.Players.Surnames;
                    player.Email = profiles.Players.Email;
                    player.NickName = profiles.Players.NickName;
                    player.BirthDate = profiles.Players.BirthDate;
                    player.Password = profiles.Players.Password;

                    profile.IDProfile = profiles.IDProfile;
                    profile.Score = (long)profiles.Score;
                    profile.LoginStatus = profiles.LoginStatus;
                    profile.ProfileImage = profiles.ProfileImage;

                    profile.Player = player;
                }
                else
                {
                    profile = null;
                }

            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return profile;
        }

        public List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> GetAllProfilesAndItsScore()
        {
            List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> profilesAndItsPointsForTransport = new List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword>();

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                List<Profiles> profilesList = renovaciónLISDatabaseContainer.ProfilesSet.ToList();                

                foreach (var profileAndItsPoints in profilesList)
                {
                    DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword dictionary = new DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
                    {
                        Key = profileAndItsPoints.Players.NickName,
                        Value = (int)profileAndItsPoints.Score
                    };

                    profilesAndItsPointsForTransport.Add(dictionary);
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return profilesAndItsPointsForTransport;
        }

        public string GetImageByPlayerNickname(string playerNickname)
        {
            Profiles profiles = new Profiles();
            string profileImage = "";

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                profiles = renovaciónLISDatabaseContainer.ProfilesSet.Where(e => e.Players.NickName == playerNickname).FirstOrDefault();

                if (profiles != null)
                {
                    profileImage = profiles.ProfileImage;
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return profileImage;
        }

        public Profile GetProfileByPlayerID(long playerID)
        {
            Profile profile = new Profile();
            Player player = new Player();
            Profiles profiles = new Profiles();

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                profiles = renovaciónLISDatabaseContainer.ProfilesSet.Where(e => e.Players.IDPlayer == playerID).FirstOrDefault();

                if (profiles != null)
                {
                    player.IDPlayer = profiles.Players.IDPlayer;
                    player.Names = profiles.Players.Names;
                    player.Surnames = profiles.Players.Surnames;
                    player.Email = profiles.Players.Email;
                    player.NickName = profiles.Players.NickName;
                    player.BirthDate = profiles.Players.BirthDate;
                    player.Password = profiles.Players.Password;

                    profile.IDProfile = profiles.IDProfile;
                    profile.Score = (long)profiles.Score;
                    profile.LoginStatus = profiles.LoginStatus;
                    profile.ProfileImage = profiles.ProfileImage;

                    profile.Player = player;
                }
                else
                {
                    profile = null;
                }

            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return profile;
        }

        public Profile GetProfileByPlayerNickname(string nickname)
        {
            Profile profile = new Profile();
            Player player = new Player();
            Profiles profiles = new Profiles();

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                profiles = renovaciónLISDatabaseContainer.ProfilesSet.Where(e => e.Players.NickName == nickname).FirstOrDefault();

                if (profiles != null)
                {
                    player.IDPlayer = profiles.Players.IDPlayer;
                    player.Names = profiles.Players.Names;
                    player.Surnames = profiles.Players.Surnames;
                    player.Email = profiles.Players.Email;
                    player.NickName = profiles.Players.NickName;
                    player.BirthDate = profiles.Players.BirthDate;
                    player.Password = profiles.Players.Password;

                    profile.IDProfile = profiles.IDProfile;
                    profile.Score = (long)profiles.Score;
                    profile.LoginStatus = profiles.LoginStatus;
                    profile.ProfileImage = profiles.ProfileImage;

                    profile.Player = player;

                }
                else
                {
                    profile = null;
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return profile;
        }

        public void ModifyProfileImage(long profileID, string newProfileImage)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                Profiles profileToModify = renovaciónLISDatabaseContainer.ProfilesSet.FirstOrDefault(e => e.IDProfile == profileID);

                if (profileToModify != null)
                {
                    profileToModify.ProfileImage = newProfileImage;
                }

                renovaciónLISDatabaseContainer.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }

        public bool TheProfileIsLogged(long profileID)
        {
            Profiles profiles = new Profiles();

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                profiles = renovaciónLISDatabaseContainer.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

                if (profiles.LoginStatus == Enum.GetName(typeof(ProfileLoginStatuses), ProfileLoginStatuses.Logged))
                {
                    return true;
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return false;
        }

        public void AddFriendship(Profiles profiles, Profiles profiles1)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();

                string sqlQuery = "INSERT INTO ProfilesProfiles (Profiles2_IDProfile, Profiles1_IDProfile) VALUES (@IDProfile, @IDProfile1)";

                var parameter1 = new SqlParameter("IDProfile", profiles.IDProfile);
                var parameter2 = new SqlParameter("IDProfile1", profiles1.IDProfile);

                renovaciónLISDatabaseContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                renovaciónLISDatabaseContainer.SaveChanges();

                parameter1 = new SqlParameter("IDProfile", profiles1.IDProfile);
                parameter2 = new SqlParameter("IDProfile1", profiles.IDProfile);

                renovaciónLISDatabaseContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                renovaciónLISDatabaseContainer.SaveChanges();

                ServiceProfileForCallbackMethods serviceProfileForCallbackMethods = new ServiceProfileForCallbackMethods();
                serviceProfileForCallbackMethods.UpdateFriendsListsToAllConnectedClients();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }

        public void CancelFriendship(Profiles profiles, Profiles profiles1)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();

                string sqlQuery = "DELETE FROM ProfilesProfiles WHERE Profiles2_IDProfile = @IDProfile AND Profiles1_IDProfile = @IDProfile1";

                var parameter1 = new SqlParameter("IDProfile", profiles.IDProfile);
                var parameter2 = new SqlParameter("IDProfile1", profiles1.IDProfile);

                renovaciónLISDatabaseContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                renovaciónLISDatabaseContainer.SaveChanges();

                parameter1 = new SqlParameter("IDProfile", profiles1.IDProfile);
                parameter2 = new SqlParameter("IDProfile1", profiles.IDProfile);

                renovaciónLISDatabaseContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                renovaciónLISDatabaseContainer.SaveChanges();


                ServiceProfileForCallbackMethods serviceProfileForCallbackMethods = new ServiceProfileForCallbackMethods();
                serviceProfileForCallbackMethods.UpdateFriendsListsToAllConnectedClients();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }


        //Only for use in the tests
        public void DeleteProfile(long playerID)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                Profiles playerToDelete = renovaciónLISDatabaseContainer.ProfilesSet.Where(e => e.IDProfile == playerID).FirstOrDefault();

                renovaciónLISDatabaseContainer.ProfilesSet.Remove(playerToDelete);
                renovaciónLISDatabaseContainer.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
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
