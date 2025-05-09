using System.Collections.Generic;
using System;
using System.ServiceModel;
using Server.AuxiliaryDataContracts;

namespace Server.ServiceContracts
{
    [ServiceContract]
    public interface IMultiplayerCrosswordNonCallbackMethods
    {
        [OperationContract]
        void ClearAnsweredWordsList();

        [OperationContract]
        string GetAdmin();

        [OperationContract]
        List<DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword> GetAllProfilesAndItsPoints();

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

        [OperationContract]
        bool TheWordIsAnswered(string word);
    }


    [ServiceContract(CallbackContract = typeof(IMultiplayerCrosswordCallback))]
    public interface IMultiplayerCrosswordCallbackMethods
    {
        [OperationContract(IsOneWay = true)]
        void AddCompletedWordToAllConnectedProfilesCrosswords(string word, string answer);

        [OperationContract(IsOneWay = true)]
        void AddPointsToProfile(string userNickname, int points);

        [OperationContract(IsOneWay = true)]
        void Connect(string username);

        [OperationContract(IsOneWay = true)]
        void Disconnect(string username);

        [OperationContract(IsOneWay = true)]
        void EndGame();

        [OperationContract(IsOneWay = true)]
        void ExpeltProfileForTheGameForBeingAlone();

        [OperationContract(IsOneWay = true)]
        void OpenTheLobbyViewToAllConnectedProfiles();

        [OperationContract(IsOneWay = true)]
        void OpenTheMultiplayerCrosswordViewToConnectedClients();

        [OperationContract(IsOneWay = true)]
        void OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages();

        [OperationContract(IsOneWay = true)]
        void ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles();

        [OperationContract(IsOneWay = true)]
        void ShowTheSelectedCrosswordBorderToConnectedClients();

        [OperationContract(IsOneWay = true)]
        void StartGameCountdown(int totalSeconds);

        [OperationContract(IsOneWay = true)]
        void StartGlobalCountdown(int totalSeconds);

        [OperationContract(IsOneWay = true)]
        void StartTheCrosswordSelectionAlgorythm();
    }


    [ServiceContract]
    public interface IMultiplayerCrosswordCallback
    {
        [OperationContract(IsOneWay = true)]
        void ExpeltProfileToTheLobbyViewForBeingAlone();

        [OperationContract(IsOneWay = true)]
        void ShowBlackScreenAnimationOnLobbyViewOrItsChildPages();

        [OperationContract(IsOneWay = true)]
        void ShowGoText();

        [OperationContract(IsOneWay = true)]
        void ShowTheSelectedCrosswordAndItsQustions();

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
        void UpdateCrossword(string word, string answer);

        [OperationContract(IsOneWay = true)]
        void UpdateProfilesPoints();
    }
}
