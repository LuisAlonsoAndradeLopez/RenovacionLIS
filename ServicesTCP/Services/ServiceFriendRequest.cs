using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Numerics;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using DatabaseManager;
using domain;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    //[ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, Name = "ServicePlayer")]
    //[ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public class ServiceFriendRequest : IFriendRequest
    {
        int IFriendRequest.AddFriendRequest(FriendRequests friendRequests)
        {
            int generatedID = 0;

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                databaseModelContainer.FriendRequestsSet.Add(friendRequests);
                databaseModelContainer.SaveChanges();
                generatedID = (int)friendRequests.IDFriendRequest;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return generatedID;
        }

        List<FriendRequests> IFriendRequest.GetFriendsRequestsByProfileID(int ID)
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

        List<FriendRequests> IFriendRequest.GetFriendsRequestsByProfile1ID(int ID)
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

        public FriendRequest GetFriendsRequestsByID(int ID)
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
                    playerProfile.IDPlayer = friendRequest.Profiles.Player.IDPlayer;
                    playerProfile.Names = friendRequest.Profiles.Player.Names;
                    playerProfile.Surnames = friendRequest.Profiles.Player.Surnames;
                    playerProfile.Email = friendRequest.Profiles.Player.Email;
                    playerProfile.NickName = friendRequest.Profiles.Player.NickName;
                    playerProfile.BirthDate = friendRequest.Profiles.Player.BirthDate;

                    Player playerProfile1 = new Player();
                    playerProfile1.IDPlayer = friendRequest.Profiles1.Player.IDPlayer;
                    playerProfile1.Names = friendRequest.Profiles1.Player.Names;
                    playerProfile1.Surnames = friendRequest.Profiles1.Player.Surnames;
                    playerProfile1.Email = friendRequest.Profiles1.Player.Email;
                    playerProfile1.NickName = friendRequest.Profiles1.Player.NickName;
                    playerProfile1.BirthDate = friendRequest.Profiles1.Player.BirthDate;

                    Profile profile = new Profile();
                    profile.IDProfile = friendRequest.Profiles.IDProfile;
                    profile.Coins = friendRequest.Profiles.Coins;
                    profile.LoginStatus = friendRequest.Profiles.LoginStatus;
                    profile.Player = playerProfile;

                    Profile profile1 = new Profile();
                    profile1.IDProfile = friendRequest.Profiles1.IDProfile;
                    profile1.Coins = friendRequest.Profiles1.Coins;
                    profile1.LoginStatus = friendRequest.Profiles1.LoginStatus;
                    profile1.Player = playerProfile1;

                    friendRequest.IDFriendRequest = friendRequests.IDFriendRequest;
                    friendRequest.CreationDate = friendRequests.CreationDate;
                    friendRequest.Message = friendRequests.Message;
                    friendRequest.AceptationStatus = friendRequests.AceptationStatus;
                    friendRequest.SendingStatus = friendRequests.SendingStatus;
                    friendRequest.Profiles = profile;
                    friendRequest.Profiles1 = profile1;
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
    }
}
