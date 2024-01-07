using System.Collections.Generic;
using System;
using System.ServiceModel;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract]
    public interface IMultiplayerCrosswordNonCallbackMethods
    {
        [OperationContract]
        string GetAdmin();

        [OperationContract]
        List<String> GetConnectedProfiles();

        [OperationContract]
        int GetCrosswordNumberSelected();

        [OperationContract]
        int GetCrosswordsPlayed();

        [OperationContract]
        int GetPointsFromAProfile(string nickname);
        
        [OperationContract]
        void SetAdmin(string username);

        [OperationContract]
        void SetTheCrosswordIsComplete();

        [OperationContract]
        void SetTheCrosswordIsNotComplete();
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
        void EndGame();

        [OperationContract(IsOneWay = true)]
        void OpenTheLobbyViewToAllConnectedProfiles();

        [OperationContract(IsOneWay = true)]
        void OpenTheMultiplayerCrosswordViewToConnectedClients();

        [OperationContract(IsOneWay = true)]
        void OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsExceptTheAdmin(string adminNickname);

        [OperationContract(IsOneWay = true)]
        void ShowTheSelectedCrosswordBorderToConnectedClients();

        [OperationContract(IsOneWay = true)]
        void StartGameCountdown(int totalSeconds);

        [OperationContract(IsOneWay = true)]
        void StartGlobalCountdown(int totalSeconds);

        [OperationContract(IsOneWay = true)]
        void StartTheCrosswordSelectionAlgorythm();

        [OperationContract(IsOneWay = true)]
        void UpdateCrosswordsToProfilesToAllConnectedProfiles();
    }



    [ServiceContract]
    public interface IMultiplayerCrosswordCallback
    {
        [OperationContract(IsOneWay = true)]
        void ShowGoText();

        [OperationContract(IsOneWay = true)]
        void ShowTimesUpText();

        [OperationContract(IsOneWay = true)]
        void OpenLobbyView();

        [OperationContract(IsOneWay = true)]
        void OpenMultiplayerCrosswordView();

        [OperationContract(IsOneWay = true)]
        void OpenRandomMultiplayerCrosswordGeneratorView();

        [OperationContract(IsOneWay = true)]
        void OpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage();

        [OperationContract(IsOneWay = true)]
        void OpenWinnersView();

        [OperationContract(IsOneWay = true)]
        void ShowTheSelectedCrosswordBorder();

        [OperationContract(IsOneWay = true)]
        void UpdateGameCountdown(int seconds);

        [OperationContract(IsOneWay = true)]
        void UpdateGlobalCountdown(int seconds);

        [OperationContract(IsOneWay = true)]
        void UpdateCrossword();

        [OperationContract(IsOneWay = true)]
        void UpdateProfilesPoints();
    }
}
