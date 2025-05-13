using System;
using System.Collections.Generic;
using System.ServiceModel;
using Server.AuxiliaryDataContracts;
using Server.DatabaseManager;
using Server.Domain;
using Server.DomainStatuses;

namespace Server.ServiceContracts
{
    [ServiceContract]
    public interface IProfileNonCallbackMethods
    {
        [OperationContract]
        long AddProfile(ProfilesSet profilesSet);

        [OperationContract]
        long AddScoreToProfile(long profileID, int score);

        [OperationContract]
        void ChangeLoginStatus(ProfileLoginStatuses profileLoginStatus, long profileID);

        [OperationContract]
        List<Profile> GetFriends(long profileID);

        [OperationContract]
        string GetImageByPlayerNickname(string playerNickname);

        [OperationContract]
        Profile GetProfileByID(long profileID);

        [OperationContract]
        List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> GetAllProfilesAndItsScore();

        [OperationContract]
        Profile GetProfileByPlayerID(long playerID);

        [OperationContract]
        Profile GetProfileByPlayerNickname(string nickname);

        [OperationContract]
        void ModifyProfileImage(long profileID, string newProfileImage);

        [OperationContract]
        bool TheProfileIsLogged(long profileID);

        [OperationContract]
        void AddFriendship(ProfilesSet profilesSet, ProfilesSet profilesSet1);

        [OperationContract]
        void CancelFriendship(ProfilesSet profilesSet, ProfilesSet profilesSet1);


        //Only for use in the tests
        [OperationContract]
        void DeleteProfile(long playerID);
    }


    [ServiceContract(CallbackContract = typeof(IProfileCallback))]
    public interface IProfileCallbackMethods
    {
        [OperationContract(IsOneWay = true)]
        void Connect(string username);

        [OperationContract(IsOneWay = true)]
        void Disconnect(string username);

        [OperationContract(IsOneWay = true)]
        void InviteFriendToTheLobby(String friendNickname);

        [OperationContract(IsOneWay = true)]
        void UpdateFriendsListsToAllConnectedClients();
    }
   

    public interface IProfileCallback
    {
        [OperationContract(IsOneWay = true)]
        void UpdateFriendsLists();

        [OperationContract(IsOneWay = true)]
        void UpdateFriendsForInviteLists();

        [OperationContract(IsOneWay = true)]
        void OpenPaneForEnterTheLobby();
    }
}
