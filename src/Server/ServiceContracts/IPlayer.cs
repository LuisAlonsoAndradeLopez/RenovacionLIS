using System;
using System.Collections.Generic;
using System.ServiceModel;
using Server.DatabaseManager;
using Server.Domain;

namespace Server.ServiceContracts
{
    [ServiceContract]
    public interface IPlayer
    {
        [OperationContract (Name = "AddPlayer")]
        long AddPlayer(PlayersSet playersSet);

        [OperationContract (Name = "GetPlayers")]
        List<PlayersSet> GetPlayers();

        [OperationContract (Name = "GetPlayerByID")]
        Player GetPlayerByID(long ID);

        [OperationContract (Name = "GetSpecifiedPlayers")]
        List<PlayersSet> GetSpecifiedPlayers(string name);

        [OperationContract(Name = "GetPlayerByNickname")]
        Player GetPlayerByNickname(String nickname);

        [OperationContract(Name = "ModifyPlayer")]
        long ModifyPlayer(PlayersSet modifiedPlayerSet);

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
