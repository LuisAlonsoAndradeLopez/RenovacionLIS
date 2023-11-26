using System.ServiceModel;

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

        [OperationContract(IsOneWay = true)]
        void UpdateChatToAllConnectedClients(string senderNickname, string message);
    }

    [ServiceContract]
    public interface IChatCallback
    {

        [OperationContract(IsOneWay = true)]
        void UpdateChat(string senderNickname, string message);
    }
}
