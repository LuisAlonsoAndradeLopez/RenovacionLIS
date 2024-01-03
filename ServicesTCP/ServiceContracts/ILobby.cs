using System;
using System.Collections.Generic;
using System.ServiceModel;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract]
    public interface ILobbyNonCallbackMethods
    {
        [OperationContract]
        string GetAdmin();

        [OperationContract]
        List<String> GetBannedProfiles();

        [OperationContract]
        List<String> GetConnectedProfiles();

        [OperationContract]
        bool IsAdmin(string nickname);

        [OperationContract]
        bool IsBanned(string nickname);

        [OperationContract]
        bool IsConnected(string nickname);

        [OperationContract]
        void SetThePlayersAreInGame();

        [OperationContract]
        void SetThePlayersAreNotInGame();

        [OperationContract]
        bool ThePlayersAreInGame();
    }

    [ServiceContract(CallbackContract = typeof(ILobbyCallback))]
    public interface ILobbyCallbackMethods
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
    }


    [ServiceContract]
    public interface ILobbyCallback
    {
        [OperationContract(IsOneWay = true)]
        void ExpelPlayerFromMultiplayerGame();

        [OperationContract(IsOneWay = true)]
        void UpdateBannedProfilesLists();

        [OperationContract(IsOneWay = true)]
        void UpdateConnectedProfilesLists();

        [OperationContract(IsOneWay = true)]
        void UpdateConnectedProfilesForInviteToLobbyLists();
    }

}
