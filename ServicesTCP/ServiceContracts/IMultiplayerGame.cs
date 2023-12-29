using System;
using System.Collections.Generic;
using System.ServiceModel;
using DatabaseManager;
using domain;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract(CallbackContract = typeof(IMultiplayerGameCallback))]
    public interface IMultiplayerGame
    {
        [OperationContract(IsOneWay = true)]
        void BanPlayer(string username);

        [OperationContract(IsOneWay = true)]
        void Connect(string username);

        [OperationContract(IsOneWay = true)]
        void Disconnect(string username);

        [OperationContract(IsOneWay = true)]
        void SetAdmin(string username);

        [OperationContract(IsOneWay = true)]
        void UnbanPlayer(string username);

        //[OperationContract(IsOneWay = true)]
        //void UpdateBannedProfilesListsToAllConnectedClients();
        //
        //[OperationContract(IsOneWay = true)]
        //void UpdateConnectedProfilesListsToAllConnectedClients();


        [OperationContract]
        List<String> GetBannedProfiles();

        [OperationContract]
        List<String> GetConnectedProfiles();

        [OperationContract]
        bool IsAdmin(string nickname);

        [OperationContract]
        bool IsBanned(string nickname);

        [OperationContract]
        void SetThePlayersAreInGame();

        [OperationContract]
        void SetThePlayersAreNotInGame();

        [OperationContract]
        bool ThePlayersAreInGame();
    }


    [ServiceContract]
    public interface IMultiplayerGameCallback
    {
        [OperationContract(IsOneWay = true)]
        void ExpelPlayerFromMultiplayerGame();

        [OperationContract(IsOneWay = true)]
        void UpdateBannedProfilesLists();

        [OperationContract(IsOneWay = true)]
        void UpdateConnectedProfilesLists();
    }

}
