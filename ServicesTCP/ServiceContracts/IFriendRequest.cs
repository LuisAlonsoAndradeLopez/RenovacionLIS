using System.Collections.Generic;
using System.ServiceModel;
using DatabaseManager;
using domain;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract]
    public interface IFriendRequestNonCallbackMethods
    {
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

        [OperationContract]
        bool TheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile(long transmitterProfileID, long senderProfileID);


        [OperationContract]
        void AddFriendRequest(FriendRequests friendRequests);

        [OperationContract]
        void AcceptFriendRequest(FriendRequests friendRequests);

        [OperationContract]
        void CancelFriendRequest(FriendRequests friendRequests);

        [OperationContract]
        void RejectFriendRequest(FriendRequests friendRequests);
    }



    [ServiceContract(CallbackContract = typeof(IFriendRequestCallback))]
    public interface IFriendRequestCallbackMethods
    {        
        [OperationContract(IsOneWay = true)]
        void Connect(string username);

        [OperationContract(IsOneWay = true)]
        void Disconnect(string username);

        [OperationContract(IsOneWay = true)]
        void UpdateFriendRequestsListsToAllConnectedClients();
    }



    [ServiceContract]
    public interface IFriendRequestCallback
    {
        [OperationContract(IsOneWay = true)]
        void UpdateFriendsRequestsLists();
    }

}
