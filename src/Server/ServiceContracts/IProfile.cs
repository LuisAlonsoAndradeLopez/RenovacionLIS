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
        long AddProfile(Profiles profiles);

        [OperationContract]
        long AddScoreToProfile(int profileID, int score);

        [OperationContract]
        void ChangeLoginStatus(ProfileLoginStatuses profileLoginStatus, long profileID);

        [OperationContract]
        List<Profile> GetFriends(long profileID);

        [OperationContract]
        byte[] GetImage(string fileName);

        [OperationContract]
        Profile GetProfileByID(long profileID);

        [OperationContract]
        List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> GetAllProfilesAndItsScore();

        [OperationContract]
        Profile GetProfileByPlayerID(long playerID);

        [OperationContract]
        Profile GetProfileByPlayerNickname(string nickname);

        [OperationContract]
        bool ModifyImageName(string fileName, string newName);

        [OperationContract]
        bool TheProfileIsLogged(long profileID);

        [OperationContract]
        bool UploadImage(string fileName, byte[] imageData);

        [OperationContract]
        void AddFriendship(Profiles profiles, Profiles profiles1);

        [OperationContract]
        void CancelFriendship(Profiles profiles, Profiles profiles1);


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
