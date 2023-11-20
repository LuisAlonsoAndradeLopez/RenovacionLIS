using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.ServiceModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using DatabaseManager;
using domain;
using DomainStatuses;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    //[ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    //[ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
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
                //
                //var friendship1 = new ProfilesProfiles { ProfilesId = profiles.IDProfile, Profiles1Id = profiles1.IDProfile };
                //var friendship2 = new ProfilesProfiles { ProfilesId = profiles1.IDProfile, Profiles1Id = profiles.IDProfile };
                //
                //var friendships = new List<ProfilesProfiles> { friendship1, friendship2 };
                //
                //databaseModelContainer.Set<ProfilesProfiles>().AddRange(friendships);

                //databaseModelContainer.Entry(profiles).State = EntityState.Unchanged;
                //
                //databaseModelContainer.Entry(profiles).Collection(p => p.Profiles1).IsModified = true;


                //var friendShip = new ProfilesProfiles { Profiles = profiles, Profiles1 = profiles1 };
                //var backwardFriendShip = new ProfilesProfiles { Profiles = profiles1, Profiles1 = profiles };
                //databaseModelContainer.ProfilesProfiles.Add(friendShip);
                //databaseModelContainer.SaveChanges();

                //databaseModelContainer.ProfilesProfiles.Add(backwardFriendShip);


                string sqlQuery = "INSERT INTO ProfilesProfiles (Profiles2_IDProfile, Profiles1_IDProfile) VALUES (@IDProfile, @IDProfile1)";
                
                var parameter1 = new SqlParameter("IDProfile", profiles.IDProfile);
                var parameter2 = new SqlParameter("IDProfile1", profiles1.IDProfile);
                
                databaseModelContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);                
                databaseModelContainer.SaveChanges();
                
                parameter1 = new SqlParameter("IDProfile", profiles1.IDProfile);
                parameter2 = new SqlParameter("IDProfile1", profiles.IDProfile);
                
                databaseModelContainer.Database.ExecuteSqlCommand(sqlQuery, parameter1, parameter2);

                databaseModelContainer.SaveChanges();
                IProfileCallback callback = OperationContext.Current.GetCallbackChannel<IProfileCallback>();
                Thread.Sleep(50);
                callback.UpdateFriendsLists();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
    }

    public partial class ServiceProfileForCallbackMethods : IProfileForCallbackMethods
    {
        private Dictionary<string, IProfileCallback> connectedProfiles = new Dictionary<string, IProfileCallback>();
        public void Connect(string username)
        {
            IProfileCallback callback = OperationContext.Current.GetCallbackChannel<IProfileCallback>();

            if (!connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Add(username, callback);

                // Notify existing friends about the new connection
                foreach (var profileCallback in connectedProfiles.Values)
                {
                    profileCallback.UpdateFriendsLists();
                }
            }
        }

        public void Disconnect(string username)
        {
            if (connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Remove(username);

                // Notify existing friends about the disconnection
                foreach (var friendCallback in connectedProfiles.Values)
                {
                    friendCallback.UpdateFriendsLists();
                }
            }
        }

        public Dictionary<string, IProfileCallback> GetConnectedProfiles()
        {
            return connectedProfiles;
        }

        public void SetConnectedProfiles(Dictionary<string, IProfileCallback> connectedProfiles)
        {
            this.connectedProfiles = connectedProfiles;
        }
    }

}
