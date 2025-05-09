using System;
using System.Collections.Generic;
using System.ServiceModel;
using Server.DatabaseManager;
using domain;

namespace Server.ServiceContracts
{
    [ServiceContract]
    public interface IPlayer
    {
        [OperationContract (Name = "AddPlayer")]
        long AddPlayer(Players player);

        [OperationContract (Name = "GetPlayers")]
        List<Players> GetPlayers();

        [OperationContract (Name = "GetPlayerByID")]
        Player GetPlayerByID(long ID);

        [OperationContract (Name = "GetSpecifiedPlayers")]
        List<Players> GetSpecifiedPlayers(string name);

        [OperationContract(Name = "GetPlayerByNickname")]
        Player GetPlayerByNickname(String nickname);

        [OperationContract(Name = "ModifyPlayer")]
        long ModifyPlayer(Players modifiedPlayer);

        [OperationContract(Name = "ModifyPasswordByEmail")]
        void ModifyPasswordByEmail(String originalEmail, String newPassword);

        [OperationContract(Name = "TheEmailIsAlreadyRegisted")]
        bool TheEmailIsAlreadyRegisted(String emailToSearch);

        [OperationContract(Name = "TheNicknameIsAlreadyRegisted")]
        bool TheNicknameIsAlreadyRegisted(String nicknameToSearch);


        //Only for use in the tests
        [OperationContract]
        void DeletePlayer(string playerNickname);
    }


    public interface IPlayerCallback
    {
        [OperationContract (IsOneWay = true, Name = "Response")]
        void Response(String response);
    }
}
