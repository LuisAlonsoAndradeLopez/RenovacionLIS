using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
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
    }
}
