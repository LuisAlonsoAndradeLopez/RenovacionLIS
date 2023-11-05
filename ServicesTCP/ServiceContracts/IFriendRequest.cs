using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract]
    public interface IFriendRequest
    {
        [OperationContract]
        int AddFriendRequest(FriendRequests friendRequests);

        [OperationContract]
        List<FriendRequests> GetFriendsRequestsByProfileID(int ID);

        [OperationContract]
        List<FriendRequests> GetFriendsRequestsByProfile1ID(int ID);
    }

}
