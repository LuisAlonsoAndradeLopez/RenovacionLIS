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
    [ServiceContract(Name = "IPlayer")]
    public interface IPlayer
    {
        [OperationContract]
        int AddPlayer(Players player);

        [OperationContract]
        int ModifyPlayer(Players modifiedPlayer);

        [OperationContract]
        List<Players> GetPlayers();

        [OperationContract]
        Players GetPlayerByID(int ID);

        [OperationContract]
        List<Players> GetSpecifiedPlayers(string name);
    }
}
