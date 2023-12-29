using System.Collections.Generic;
using System.ServiceModel;
using ServicesTCP.AuxiliaryContracts;

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


        [OperationContract]
        List<KeyValueDataContract> GetConnectedProfilesAndTheirMessages();
    }

    [ServiceContract]
    public interface IChatCallback
    {
        [OperationContract(IsOneWay = true)]
        void UpdateChat();
    }
}
