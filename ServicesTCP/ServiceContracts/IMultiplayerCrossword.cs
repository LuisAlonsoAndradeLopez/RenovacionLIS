using System.ServiceModel;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract(CallbackContract = typeof(IMultiplayerCrosswordCallback))]
    public interface IMultiplayerCrossword
    {
        [OperationContract(IsOneWay = true)]
        void addPointsToProfile(string userNickname, int points);

        [OperationContract(IsOneWay = true)]
        void Connect(string username);

        [OperationContract(IsOneWay = true)]
        void Disconnect(string username);

        [OperationContract(IsOneWay = true)]
        void SetAdmin(string username);

        [OperationContract(IsOneWay = true)]
        void StartCountdown(int totalSeconds);

        [OperationContract(IsOneWay = true)]
        void UpdateCrosswordsToProfilesToAllConnectedProfiles();
    }

    [ServiceContract]
    public interface IMultiplayerCrosswordCallback
    {
        [OperationContract(IsOneWay = true)]
        void UpdateCountdown(int seconds);

        [OperationContract(IsOneWay = true)]
        void UpdateCrossword();

        [OperationContract(IsOneWay = true)]
        void UpdateProfilesPoints();
    }
}
