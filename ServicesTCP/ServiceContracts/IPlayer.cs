using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract(CallbackContract = typeof(IPlayerCallback))]
    public interface IPlayer
    {
        [OperationContract (Name = "AddPlayer")]
        int AddPlayer(Players player);

        [OperationContract (Name = "ModifyPlayer")]
        int ModifyPlayer(Players modifiedPlayer);

        [OperationContract (Name = "GetPlayers")]
        List<Players> GetPlayers();

        [OperationContract (Name = "GetPlayerByID")]
        Players GetPlayerByID(int ID);

        [OperationContract (Name = "GetSpecifiedPlayers")]
        List<Players> GetSpecifiedPlayers(string name);
    }

    //[ServiceContract(CallbackContract = typeof(IPlayerCallback))]
    public interface IPlayerCallback
    {
        [OperationContract (Name = "Response", IsOneWay = true)]
        void Response(String response);
    }
}
