﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tests.ServiceMultiplayerCrosswordForCallbackMethodsReference {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceMultiplayerCrosswordForCallbackMethodsReference.IMultiplayerCrosswordCallb" +
        "ackMethods", CallbackContract=typeof(Tests.ServiceMultiplayerCrosswordForCallbackMethodsReference.IMultiplayerCrosswordCallbackMethodsCallback))]
    public interface IMultiplayerCrosswordCallbackMethods {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/AddCompletedWordToAllConn" +
            "ectedProfilesCrosswords")]
        void AddCompletedWordToAllConnectedProfilesCrosswords(string word, string answer);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/AddCompletedWordToAllConn" +
            "ectedProfilesCrosswords")]
        System.Threading.Tasks.Task AddCompletedWordToAllConnectedProfilesCrosswordsAsync(string word, string answer);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/AddPointsToProfile")]
        void AddPointsToProfile(string userNickname, int points);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/AddPointsToProfile")]
        System.Threading.Tasks.Task AddPointsToProfileAsync(string userNickname, int points);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/Connect")]
        void Connect(string username);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/Connect")]
        System.Threading.Tasks.Task ConnectAsync(string username);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/Disconnect")]
        void Disconnect(string username);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/Disconnect")]
        System.Threading.Tasks.Task DisconnectAsync(string username);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/EndGame")]
        void EndGame();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/EndGame")]
        System.Threading.Tasks.Task EndGameAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ExpeltProfileForTheGameFo" +
            "rBeingAlone")]
        void ExpeltProfileForTheGameForBeingAlone();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ExpeltProfileForTheGameFo" +
            "rBeingAlone")]
        System.Threading.Tasks.Task ExpeltProfileForTheGameForBeingAloneAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenTheLobbyViewToAllConn" +
            "ectedProfiles")]
        void OpenTheLobbyViewToAllConnectedProfiles();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenTheLobbyViewToAllConn" +
            "ectedProfiles")]
        System.Threading.Tasks.Task OpenTheLobbyViewToAllConnectedProfilesAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenTheMultiplayerCrosswo" +
            "rdViewToConnectedClients")]
        void OpenTheMultiplayerCrosswordViewToConnectedClients();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenTheMultiplayerCrosswo" +
            "rdViewToConnectedClients")]
        System.Threading.Tasks.Task OpenTheMultiplayerCrosswordViewToConnectedClientsAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenTheRandomMultiplayerC" +
            "rosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages")]
        void OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenTheRandomMultiplayerC" +
            "rosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages")]
        System.Threading.Tasks.Task OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPagesAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowBlackScreenAnimationO" +
            "nLobbyViewOrItsChildPagesToAllConnectedProfiles")]
        void ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowBlackScreenAnimationO" +
            "nLobbyViewOrItsChildPagesToAllConnectedProfiles")]
        System.Threading.Tasks.Task ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfilesAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowTheSelectedCrosswordB" +
            "orderToConnectedClients")]
        void ShowTheSelectedCrosswordBorderToConnectedClients();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowTheSelectedCrosswordB" +
            "orderToConnectedClients")]
        System.Threading.Tasks.Task ShowTheSelectedCrosswordBorderToConnectedClientsAsync();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/StartGameCountdown")]
        void StartGameCountdown(int totalSeconds);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/StartGameCountdown")]
        System.Threading.Tasks.Task StartGameCountdownAsync(int totalSeconds);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/StartGlobalCountdown")]
        void StartGlobalCountdown(int totalSeconds);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/StartGlobalCountdown")]
        System.Threading.Tasks.Task StartGlobalCountdownAsync(int totalSeconds);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/StartTheCrosswordSelectio" +
            "nAlgorythm")]
        void StartTheCrosswordSelectionAlgorythm();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/StartTheCrosswordSelectio" +
            "nAlgorythm")]
        System.Threading.Tasks.Task StartTheCrosswordSelectionAlgorythmAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IMultiplayerCrosswordCallbackMethodsCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ExpeltProfileToTheLobbyVi" +
            "ewForBeingAlone")]
        void ExpeltProfileToTheLobbyViewForBeingAlone();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowBlackScreenAnimationO" +
            "nLobbyViewOrItsChildPages")]
        void ShowBlackScreenAnimationOnLobbyViewOrItsChildPages();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowGoText")]
        void ShowGoText();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowTheSelectedCrosswordA" +
            "ndItsQustions")]
        void ShowTheSelectedCrosswordAndItsQustions();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowTimesUpText")]
        void ShowTimesUpText();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenLobbyView")]
        void OpenLobbyView();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenMultiplayerCrosswordV" +
            "iew")]
        void OpenMultiplayerCrosswordView();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenRandomMultiplayerCros" +
            "swordGeneratorView")]
        void OpenRandomMultiplayerCrosswordGeneratorView();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenRandomMultiplayerCros" +
            "swordGeneratorViewInTheCurrentLobbyViewChildPage")]
        void OpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/OpenWinnersView")]
        void OpenWinnersView();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/ShowTheSelectedCrosswordB" +
            "order")]
        void ShowTheSelectedCrosswordBorder();
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/UpdateGameCountdown")]
        void UpdateGameCountdown(int seconds);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/UpdateGlobalCountdown")]
        void UpdateGlobalCountdown(int seconds);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/UpdateCrossword")]
        void UpdateCrossword(string word, string answer);
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IMultiplayerCrosswordCallbackMethods/UpdateProfilesPoints")]
        void UpdateProfilesPoints();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IMultiplayerCrosswordCallbackMethodsChannel : Tests.ServiceMultiplayerCrosswordForCallbackMethodsReference.IMultiplayerCrosswordCallbackMethods, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class MultiplayerCrosswordCallbackMethodsClient : System.ServiceModel.DuplexClientBase<Tests.ServiceMultiplayerCrosswordForCallbackMethodsReference.IMultiplayerCrosswordCallbackMethods>, Tests.ServiceMultiplayerCrosswordForCallbackMethodsReference.IMultiplayerCrosswordCallbackMethods {
        
        public MultiplayerCrosswordCallbackMethodsClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public MultiplayerCrosswordCallbackMethodsClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public MultiplayerCrosswordCallbackMethodsClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public MultiplayerCrosswordCallbackMethodsClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public MultiplayerCrosswordCallbackMethodsClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void AddCompletedWordToAllConnectedProfilesCrosswords(string word, string answer) {
            base.Channel.AddCompletedWordToAllConnectedProfilesCrosswords(word, answer);
        }
        
        public System.Threading.Tasks.Task AddCompletedWordToAllConnectedProfilesCrosswordsAsync(string word, string answer) {
            return base.Channel.AddCompletedWordToAllConnectedProfilesCrosswordsAsync(word, answer);
        }
        
        public void AddPointsToProfile(string userNickname, int points) {
            base.Channel.AddPointsToProfile(userNickname, points);
        }
        
        public System.Threading.Tasks.Task AddPointsToProfileAsync(string userNickname, int points) {
            return base.Channel.AddPointsToProfileAsync(userNickname, points);
        }
        
        public void Connect(string username) {
            base.Channel.Connect(username);
        }
        
        public System.Threading.Tasks.Task ConnectAsync(string username) {
            return base.Channel.ConnectAsync(username);
        }
        
        public void Disconnect(string username) {
            base.Channel.Disconnect(username);
        }
        
        public System.Threading.Tasks.Task DisconnectAsync(string username) {
            return base.Channel.DisconnectAsync(username);
        }
        
        public void EndGame() {
            base.Channel.EndGame();
        }
        
        public System.Threading.Tasks.Task EndGameAsync() {
            return base.Channel.EndGameAsync();
        }
        
        public void ExpeltProfileForTheGameForBeingAlone() {
            base.Channel.ExpeltProfileForTheGameForBeingAlone();
        }
        
        public System.Threading.Tasks.Task ExpeltProfileForTheGameForBeingAloneAsync() {
            return base.Channel.ExpeltProfileForTheGameForBeingAloneAsync();
        }
        
        public void OpenTheLobbyViewToAllConnectedProfiles() {
            base.Channel.OpenTheLobbyViewToAllConnectedProfiles();
        }
        
        public System.Threading.Tasks.Task OpenTheLobbyViewToAllConnectedProfilesAsync() {
            return base.Channel.OpenTheLobbyViewToAllConnectedProfilesAsync();
        }
        
        public void OpenTheMultiplayerCrosswordViewToConnectedClients() {
            base.Channel.OpenTheMultiplayerCrosswordViewToConnectedClients();
        }
        
        public System.Threading.Tasks.Task OpenTheMultiplayerCrosswordViewToConnectedClientsAsync() {
            return base.Channel.OpenTheMultiplayerCrosswordViewToConnectedClientsAsync();
        }
        
        public void OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages() {
            base.Channel.OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages();
        }
        
        public System.Threading.Tasks.Task OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPagesAsync() {
            return base.Channel.OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPagesAsync();
        }
        
        public void ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles() {
            base.Channel.ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles();
        }
        
        public System.Threading.Tasks.Task ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfilesAsync() {
            return base.Channel.ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfilesAsync();
        }
        
        public void ShowTheSelectedCrosswordBorderToConnectedClients() {
            base.Channel.ShowTheSelectedCrosswordBorderToConnectedClients();
        }
        
        public System.Threading.Tasks.Task ShowTheSelectedCrosswordBorderToConnectedClientsAsync() {
            return base.Channel.ShowTheSelectedCrosswordBorderToConnectedClientsAsync();
        }
        
        public void StartGameCountdown(int totalSeconds) {
            base.Channel.StartGameCountdown(totalSeconds);
        }
        
        public System.Threading.Tasks.Task StartGameCountdownAsync(int totalSeconds) {
            return base.Channel.StartGameCountdownAsync(totalSeconds);
        }
        
        public void StartGlobalCountdown(int totalSeconds) {
            base.Channel.StartGlobalCountdown(totalSeconds);
        }
        
        public System.Threading.Tasks.Task StartGlobalCountdownAsync(int totalSeconds) {
            return base.Channel.StartGlobalCountdownAsync(totalSeconds);
        }
        
        public void StartTheCrosswordSelectionAlgorythm() {
            base.Channel.StartTheCrosswordSelectionAlgorythm();
        }
        
        public System.Threading.Tasks.Task StartTheCrosswordSelectionAlgorythmAsync() {
            return base.Channel.StartTheCrosswordSelectionAlgorythmAsync();
        }
    }
}