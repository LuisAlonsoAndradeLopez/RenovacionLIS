using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract(CallbackContract = typeof(IChatCallback))]
    public interface IChat
    {
        [OperationContract(IsOneWay = true)]
        void JoinChat(string nickname);

        [OperationContract(IsOneWay = true)]
        void LeaveChat(string nickname);

        [OperationContract(IsOneWay = true)]
        void SendMessage(string senderNickname, string message);
    }

    [ServiceContract]
    public interface IChatCallback
    {
        [OperationContract(IsOneWay = true)]
        void ReceiveMessage(string senderNickname, string message);
    }
}
