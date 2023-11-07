using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;
using domain;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract]
    public interface IFriendRequest
    {
        [OperationContract]
        long AddFriendRequest(FriendRequests friendRequests);

        [OperationContract]
        void AcceptFriendRequest(FriendRequests friendRequests);

        [OperationContract]
        void CancelFriendRequest(FriendRequests friendRequests);

        [OperationContract]
        List<FriendRequests> GetFriendsRequestsByProfileID(long ID);

        [OperationContract]
        List<FriendRequests> GetFriendsRequestsByProfile1ID(long ID);

        [OperationContract]
        FriendRequest GetFriendRequestByID(long IDFriendRequest);

        [OperationContract]
        List<FriendRequest> GetPendientsForAceptationFriendsRequestsByProfile1ID(long IDProfile1);

        [OperationContract]
        List<FriendRequest> GetSentFriendsRequestsByProfileID(long IDProfile);

        [OperationContract]
        void RejectFriendRequest(FriendRequests friendRequests);
    }

}
