using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;

namespace ServiceContracts
{
    [ServiceContract]
    public interface IPlayer
    {
        [OperationContract]
        int AddPlayer(Players playersTable);

        [OperationContract]
        List<Players> GetPlayers();

        [OperationContract]
        string[] GetPlayerByID(int ID);
    }
}
