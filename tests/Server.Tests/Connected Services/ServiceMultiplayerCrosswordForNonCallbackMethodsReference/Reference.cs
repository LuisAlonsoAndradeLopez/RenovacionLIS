﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tests.ServiceMultiplayerCrosswordForNonCallbackMethodsReference {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceMultiplayerCrosswordForNonCallbackMethodsReference.IMultiplayerCrosswordNo" +
        "nCallbackMethods")]
    public interface IMultiplayerCrosswordNonCallbackMethods {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/ClearAnsweredWordsList" +
            "", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/ClearAnsweredWordsList" +
            "Response")]
        void ClearAnsweredWordsList();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/ClearAnsweredWordsList" +
            "", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/ClearAnsweredWordsList" +
            "Response")]
        System.Threading.Tasks.Task ClearAnsweredWordsListAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetAdmin", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetAdminResponse")]
        string GetAdmin();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetAdmin", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetAdminResponse")]
        System.Threading.Tasks.Task<string> GetAdminAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetAllProfilesAndItsPo" +
            "ints", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetAllProfilesAndItsPo" +
            "intsResponse")]
        Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference.DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword[] GetAllProfilesAndItsPoints();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetAllProfilesAndItsPo" +
            "ints", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetAllProfilesAndItsPo" +
            "intsResponse")]
        System.Threading.Tasks.Task<Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference.DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword[]> GetAllProfilesAndItsPointsAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetConnectedProfiles", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetConnectedProfilesRe" +
            "sponse")]
        string[] GetConnectedProfiles();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetConnectedProfiles", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetConnectedProfilesRe" +
            "sponse")]
        System.Threading.Tasks.Task<string[]> GetConnectedProfilesAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetCrosswordNumberSele" +
            "cted", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetCrosswordNumberSele" +
            "ctedResponse")]
        int GetCrosswordNumberSelected();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetCrosswordNumberSele" +
            "cted", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetCrosswordNumberSele" +
            "ctedResponse")]
        System.Threading.Tasks.Task<int> GetCrosswordNumberSelectedAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetCrosswordsPlayed", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetCrosswordsPlayedRes" +
            "ponse")]
        int GetCrosswordsPlayed();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetCrosswordsPlayed", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetCrosswordsPlayedRes" +
            "ponse")]
        System.Threading.Tasks.Task<int> GetCrosswordsPlayedAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetPointsFromAProfile", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetPointsFromAProfileR" +
            "esponse")]
        int GetPointsFromAProfile(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetPointsFromAProfile", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/GetPointsFromAProfileR" +
            "esponse")]
        System.Threading.Tasks.Task<int> GetPointsFromAProfileAsync(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetAdmin", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetAdminResponse")]
        void SetAdmin(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetAdmin", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetAdminResponse")]
        System.Threading.Tasks.Task SetAdminAsync(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetTheCrosswordIsCompl" +
            "ete", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetTheCrosswordIsCompl" +
            "eteResponse")]
        void SetTheCrosswordIsComplete();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetTheCrosswordIsCompl" +
            "ete", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetTheCrosswordIsCompl" +
            "eteResponse")]
        System.Threading.Tasks.Task SetTheCrosswordIsCompleteAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetTheCrosswordIsNotCo" +
            "mplete", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetTheCrosswordIsNotCo" +
            "mpleteResponse")]
        void SetTheCrosswordIsNotComplete();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetTheCrosswordIsNotCo" +
            "mplete", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/SetTheCrosswordIsNotCo" +
            "mpleteResponse")]
        System.Threading.Tasks.Task SetTheCrosswordIsNotCompleteAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/TheWordIsAnswered", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/TheWordIsAnsweredRespo" +
            "nse")]
        bool TheWordIsAnswered(string word);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/TheWordIsAnswered", ReplyAction="http://tempuri.org/IMultiplayerCrosswordNonCallbackMethods/TheWordIsAnsweredRespo" +
            "nse")]
        System.Threading.Tasks.Task<bool> TheWordIsAnsweredAsync(string word);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IMultiplayerCrosswordNonCallbackMethodsChannel : Tests.ServiceMultiplayerCrosswordForNonCallbackMethodsReference.IMultiplayerCrosswordNonCallbackMethods, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class MultiplayerCrosswordNonCallbackMethodsClient : System.ServiceModel.ClientBase<Tests.ServiceMultiplayerCrosswordForNonCallbackMethodsReference.IMultiplayerCrosswordNonCallbackMethods>, Tests.ServiceMultiplayerCrosswordForNonCallbackMethodsReference.IMultiplayerCrosswordNonCallbackMethods {
        
        public MultiplayerCrosswordNonCallbackMethodsClient() {
        }
        
        public MultiplayerCrosswordNonCallbackMethodsClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public MultiplayerCrosswordNonCallbackMethodsClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public MultiplayerCrosswordNonCallbackMethodsClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public MultiplayerCrosswordNonCallbackMethodsClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public void ClearAnsweredWordsList() {
            base.Channel.ClearAnsweredWordsList();
        }
        
        public System.Threading.Tasks.Task ClearAnsweredWordsListAsync() {
            return base.Channel.ClearAnsweredWordsListAsync();
        }
        
        public string GetAdmin() {
            return base.Channel.GetAdmin();
        }
        
        public System.Threading.Tasks.Task<string> GetAdminAsync() {
            return base.Channel.GetAdminAsync();
        }
        
        public Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference.DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword[] GetAllProfilesAndItsPoints() {
            return base.Channel.GetAllProfilesAndItsPoints();
        }
        
        public System.Threading.Tasks.Task<Renovación_LIS_Client.ServiceMultiplayerCrosswordForNonCallbackMethodsReference.DictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword[]> GetAllProfilesAndItsPointsAsync() {
            return base.Channel.GetAllProfilesAndItsPointsAsync();
        }
        
        public string[] GetConnectedProfiles() {
            return base.Channel.GetConnectedProfiles();
        }
        
        public System.Threading.Tasks.Task<string[]> GetConnectedProfilesAsync() {
            return base.Channel.GetConnectedProfilesAsync();
        }
        
        public int GetCrosswordNumberSelected() {
            return base.Channel.GetCrosswordNumberSelected();
        }
        
        public System.Threading.Tasks.Task<int> GetCrosswordNumberSelectedAsync() {
            return base.Channel.GetCrosswordNumberSelectedAsync();
        }
        
        public int GetCrosswordsPlayed() {
            return base.Channel.GetCrosswordsPlayed();
        }
        
        public System.Threading.Tasks.Task<int> GetCrosswordsPlayedAsync() {
            return base.Channel.GetCrosswordsPlayedAsync();
        }
        
        public int GetPointsFromAProfile(string nickname) {
            return base.Channel.GetPointsFromAProfile(nickname);
        }
        
        public System.Threading.Tasks.Task<int> GetPointsFromAProfileAsync(string nickname) {
            return base.Channel.GetPointsFromAProfileAsync(nickname);
        }
        
        public void SetAdmin(string username) {
            base.Channel.SetAdmin(username);
        }
        
        public System.Threading.Tasks.Task SetAdminAsync(string username) {
            return base.Channel.SetAdminAsync(username);
        }
        
        public void SetTheCrosswordIsComplete() {
            base.Channel.SetTheCrosswordIsComplete();
        }
        
        public System.Threading.Tasks.Task SetTheCrosswordIsCompleteAsync() {
            return base.Channel.SetTheCrosswordIsCompleteAsync();
        }
        
        public void SetTheCrosswordIsNotComplete() {
            base.Channel.SetTheCrosswordIsNotComplete();
        }
        
        public System.Threading.Tasks.Task SetTheCrosswordIsNotCompleteAsync() {
            return base.Channel.SetTheCrosswordIsNotCompleteAsync();
        }
        
        public bool TheWordIsAnswered(string word) {
            return base.Channel.TheWordIsAnswered(word);
        }
        
        public System.Threading.Tasks.Task<bool> TheWordIsAnsweredAsync(string word) {
            return base.Channel.TheWordIsAnsweredAsync(word);
        }
    }
}
