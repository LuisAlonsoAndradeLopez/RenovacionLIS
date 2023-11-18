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
    [ServiceContract(CallbackContract = typeof(IFriendRequestCallback))]
    public interface IFriendRequest
    {
        [OperationContract]
        void AddFriendRequest(FriendRequests friendRequests);

        [OperationContract]
        List<FriendRequests> GetFriendsRequestsByProfileID(long ID);

        [OperationContract]
        List<FriendRequests> GetFriendsRequestsByProfile1ID(long ID);

        [OperationContract]
        FriendRequest GetFriendRequestByID(long IDFriendRequest);

        [OperationContract]
        List<FriendRequest> GetPendientsForAceptationFriendsRequestsByProfile1ID(long IDProfile1);

        [OperationContract]
        List<FriendRequest> GetSentAndPendientsForAceptationFriendsRequestsByProfileID(long IDProfile);

        [OperationContract]
        bool TheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile(long transmitterProfileID, long receiverProfileID);
    }

    public interface IFriendRequestForCallbackMethods
    {
        [OperationContract(IsOneWay = true)]
        void AcceptFriendRequest(FriendRequests friendRequests);

        [OperationContract(IsOneWay = true)]
        void CancelFriendRequest(FriendRequests friendRequests);

        [OperationContract(IsOneWay = true)]
        void RejectFriendRequest(FriendRequests friendRequests);
    }


    //[ServiceContract]
    public interface IFriendRequestCallback
    {
        [OperationContract(IsOneWay = true)]
        void UpdateFriendsRequestsLists();
    }

}
