using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.ServiceModel;
using DatabaseManager;
using domain;
using DomainStatuses;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceProfile : IProfile
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
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return generatedID;
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
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
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

                    foreach(Profiles p in profilesHasSet)
                    {
                        Player profilePlayer = new Player();
                        profilePlayer.IDPlayer = p.Players.IDPlayer;
                        profilePlayer.Names = p.Players.Names;
                        profilePlayer.Surnames = p.Players.Surnames;
                        profilePlayer.Email = p.Players.Email;
                        profilePlayer.NickName = p.Players.NickName;
                        profilePlayer.BirthDate = p.Players.BirthDate;

                        Profile profile = new Profile();
                        profile.IDProfile = p.IDProfile;
                        profile.Coins = (long)p.Coins;
                        profile.LoginStatus = p.LoginStatus;
                        profile.Player = profilePlayer;

                        profileList.Add(profile);
                    }
                }
                else
                {
                    profileList = null;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
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
            catch (Exception ex)
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
                    profile.Coins = (long)profiles.Coins;
                    profile.LoginStatus = profiles.LoginStatus;

                    profile.Player = player;
                }
                else
                {
                    profile = null;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return profile;
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
                    profile.Coins = (long)profiles.Coins;
                    profile.LoginStatus = profiles.LoginStatus;

                    profile.Player = player;
                }
                else
                {
                    profile = null;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
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
                    profile.Coins = (long)profiles.Coins;
                    profile.LoginStatus = profiles.LoginStatus;

                    profile.Player = player;

                }
                else
                {
                    profile = null;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return profile;
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
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
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
            catch (Exception ex)
            {
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
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
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
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
    }

    public partial class ServiceProfileForCallbackMethods : IProfileForCallbackMethods
    {
        public static Dictionary<string, IProfileCallback> connectedProfiles = new Dictionary<string, IProfileCallback>();

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

                UpdateFriendsListsToAllConnectedClients();
            }
        }

        public void UpdateFriendsListsToAllConnectedClients()
        {
            foreach (var friendCallback in connectedProfiles.Values)
            {
                friendCallback.UpdateFriendsLists();
            }
        }
    }

}
