using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract(CallbackContract = typeof(ILivePlayerCallback))]
    public interface ILivePlayer
    {
        [OperationContract(IsOneWay = true)]
        void Join(string playerName);

        [OperationContract(IsOneWay = true)]
        void Leave(string playerName);
    }

    [ServiceContract]
    public interface ILivePlayerCallback
    {
        [OperationContract(IsOneWay = true)]
        void UpdatePlayersList(List<string> players);
    }
}
