using System;
using System.Collections.Generic;
using System.Data.Entity;
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
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                databaseModelContainer.ProfilesSet.Add(profiles);
                databaseModelContainer.SaveChanges();
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

        public long AddScoreToProfile(int profileID, int score)
        {
            long successStatus = 0;
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                Profiles profileToModify = databaseModelContainer.ProfilesSet.Find(profileID);
                if (profileToModify != null)
                {
                    profileToModify.Score += score;

                    databaseModelContainer.SaveChanges();

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
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                Profiles profileToModify = databaseModelContainer.ProfilesSet.Find(profileID);
                if (profileToModify != null)
                {
                    profileToModify.LoginStatus = profileLoginStatus.ToString();

                    databaseModelContainer.SaveChanges();
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
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                profiles = databaseModelContainer.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

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

        public byte[] GetImage(string fileName)
        {
            try
            {
                string serverFolderPath = "C:\\Users\\wmike\\OneDrive\\Documentos\\RenovaciónLISUsersProfilePictures";
                string filePath = Path.Combine(serverFolderPath, fileName);
                byte[] imageData = File.ReadAllBytes(filePath);

                return imageData;
            }
            catch (FileNotFoundException)
            {
                return null;
            }
        }

        public Profile GetProfileByID(long profileID)
        {
            Profile profile = new Profile();
            Player player = new Player();
            Profiles profiles = new Profiles();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                profiles = databaseModelContainer.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

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
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                List<Profiles> profilesList = databaseModelContainer.ProfilesSet.ToList();                

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

        public Profile GetProfileByPlayerID(long playerID)
        {
            Profile profile = new Profile();
            Player player = new Player();
            Profiles profiles = new Profiles();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                profiles = databaseModelContainer.ProfilesSet.Where(e => e.Players.IDPlayer == playerID).FirstOrDefault();

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
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                profiles = databaseModelContainer.ProfilesSet.Where(e => e.Players.NickName == nickname).FirstOrDefault();

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

        public bool ModifyImageName(string fileName, string newName)
        {
            try
            {
                string serverFolderPath = "C:\\Users\\wmike\\OneDrive\\Documentos\\RenovaciónLISUsersProfilePictures";
                var matchingFiles = Directory.GetFiles(serverFolderPath, $"{fileName}.*")
                                              .ToList();

                if (matchingFiles.Count > 0)
                {
                    string imagePath = matchingFiles.First();
                    string newFileName = $"{newName}{Path.GetExtension(imagePath)}";
                    string newPath = Path.Combine(Path.GetDirectoryName(imagePath), newFileName);
                    File.Move(imagePath, newPath);
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                return false;
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                return false;
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                return false;
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                return false;
            }

            return true;
        }

        public bool TheProfileIsLogged(long profileID)
        {
            Profiles profiles = new Profiles();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                profiles = databaseModelContainer.ProfilesSet.Where(e => e.IDProfile == profileID).FirstOrDefault();

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

        public bool UploadImage(string fileName, byte[] imageData)
        {
            try
            {
                string serverFolderPath = "C:\\Users\\wmike\\OneDrive\\Documentos\\RenovaciónLISUsersProfilePictures";

                string searchString = ".";

                int index = fileName.IndexOf(searchString);
                string fileNameWithoutExtensionToDelete = "";

                if (index != -1)
                {
                    fileNameWithoutExtensionToDelete = fileName.Substring(0, index);
                }


                DirectoryInfo directoryInfo = new DirectoryInfo(serverFolderPath);

                if (directoryInfo.Exists)
                {
                    FileInfo[] files = directoryInfo.GetFiles();

                    foreach (FileInfo file in files)
                    {
                        string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(file.Name);

                        if (string.Equals(fileNameWithoutExtension, fileNameWithoutExtensionToDelete, StringComparison.OrdinalIgnoreCase))
                        {
                            file.Delete();
                        }
                    }
                }


                string filePath = Path.Combine(serverFolderPath, fileName);
                File.WriteAllBytes(filePath, imageData);

            }
            catch (FileNotFoundException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
                return false;
            }

            return true;
        }


        public void AddFriendship(Profiles profiles, Profiles profiles1)
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();

                string sqlQuery = "INSERT INTO ProfilesProfiles (Profiles2_IDProfile, Profiles1_IDProfile) VALUES (@IDProfile, @IDProfile1)";

                var parameter1 = new SqlParameter("IDProfile", profiles.IDProfile);
                var parameter2 = new SqlParameter("IDProfile1", profiles1.IDProfile);

                databaseModelContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                databaseModelContainer.SaveChanges();

                parameter1 = new SqlParameter("IDProfile", profiles1.IDProfile);
                parameter2 = new SqlParameter("IDProfile1", profiles.IDProfile);

                databaseModelContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                databaseModelContainer.SaveChanges();

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
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();

                string sqlQuery = "DELETE FROM ProfilesProfiles WHERE Profiles2_IDProfile = @IDProfile AND Profiles1_IDProfile = @IDProfile1";

                var parameter1 = new SqlParameter("IDProfile", profiles.IDProfile);
                var parameter2 = new SqlParameter("IDProfile1", profiles1.IDProfile);

                databaseModelContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                databaseModelContainer.SaveChanges();

                parameter1 = new SqlParameter("IDProfile", profiles1.IDProfile);
                parameter2 = new SqlParameter("IDProfile1", profiles.IDProfile);

                databaseModelContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);
                databaseModelContainer.SaveChanges();


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
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                Profiles playerToDelete = databaseModelContainer.ProfilesSet.Where(e => e.IDProfile == playerID).FirstOrDefault();

                databaseModelContainer.ProfilesSet.Remove(playerToDelete);
                databaseModelContainer.SaveChanges();
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


        public void OnClose()
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                var entitiesToUpdate = databaseModelContainer.ProfilesSet.ToList();

                foreach (var entity in entitiesToUpdate)
                {
                    entity.LoginStatus = ProfileLoginStatuses.NotLogged.ToString();
                    
                    databaseModelContainer.Entry(entity).State = EntityState.Detached;
                }

                databaseModelContainer.SaveChanges();
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
