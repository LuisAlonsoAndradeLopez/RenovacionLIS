using System.ServiceModel;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract]
    public interface IMultiplayerCrosswordNonCallbackMethods
    {
        [OperationContract]
        string GetAdmin();
        
        [OperationContract]
        int GetPointsFromAProfile(string nickname);
        
        [OperationContract]
        void SetAdmin(string username);
    }



    [ServiceContract(CallbackContract = typeof(IMultiplayerCrosswordCallback))]
    public interface IMultiplayerCrosswordCallbackMethods
    {
        [OperationContract(IsOneWay = true)]
        void AddPointsToProfile(string userNickname, int points);

        [OperationContract(IsOneWay = true)]
        void Connect(string username);

        [OperationContract(IsOneWay = true)]
        void Disconnect(string username);

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
