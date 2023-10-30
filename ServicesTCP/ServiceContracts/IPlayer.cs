using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;

namespace ServicesTCP.ServiceContracts
{
    //[ServiceContract(CallbackContract = typeof(IPlayerCallback))]
    [ServiceContract]
    public interface IPlayer
    {
        [OperationContract (Name = "AddPlayer")]
        int AddPlayer(Players player);

        [OperationContract (Name = "GetPlayers")]
        List<Players> GetPlayers();

        [OperationContract (Name = "GetPlayerByID")]
        Players GetPlayerByID(int ID);

        [OperationContract (Name = "GetSpecifiedPlayers")]
        List<Players> GetSpecifiedPlayers(string name);

        [OperationContract(Name = "GetPlayerByNickname")]
        Players GetPlayerByNickname(String nickname);

        [OperationContract(Name = "ModifyPlayer")]
        int ModifyPlayer(Players modifiedPlayer);

        [OperationContract(Name = "ModifyPasswordByEmail")]
        int ModifyPasswordByEmail(String originalEmail, String newPassword);

        [OperationContract(Name = "TheEmailIsAlreadyRegisted")]
        bool TheEmailIsAlreadyRegisted(String emailToSearch);
        [OperationContract(Name = "TheNicknameIsAlreadyRegisted")]
        bool TheNicknameIsAlreadyRegisted(String nicknameToSearch);
    }

    public interface IPlayerCallback
    {
        [OperationContract (IsOneWay = true, Name = "Response")]
        void Response(String response);
    }
}
