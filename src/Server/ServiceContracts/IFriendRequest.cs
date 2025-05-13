using System.Collections.Generic;
using System.ServiceModel;
using Server.DatabaseManager;
using Server.Domain;

namespace Server.ServiceContracts
{
    [ServiceContract]
    public interface IFriendRequestNonCallbackMethods
    {
        [OperationContract]
        List<FriendRequestsSet> GetFriendsRequestsByProfileID(long ID);

        [OperationContract]
        List<FriendRequestsSet> GetFriendsRequestsByProfile1ID(long ID);

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
        void AddFriendRequest(FriendRequestsSet friendRequestsSet);

        [OperationContract]
        void AcceptFriendRequest(FriendRequestsSet friendRequestsSet);

        [OperationContract]
        void CancelFriendRequest(FriendRequestsSet friendRequestsSet);

        [OperationContract]
        void RejectFriendRequest(FriendRequestsSet friendRequestsSet);
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
