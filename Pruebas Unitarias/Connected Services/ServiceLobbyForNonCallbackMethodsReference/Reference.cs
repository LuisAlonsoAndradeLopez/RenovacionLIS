﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tests.ServiceLobbyForNonCallbackMethodsReference {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceLobbyForNonCallbackMethodsReference.ILobbyNonCallbackMethods")]
    public interface ILobbyNonCallbackMethods {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/GetAdmin", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/GetAdminResponse")]
        string GetAdmin();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/GetAdmin", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/GetAdminResponse")]
        System.Threading.Tasks.Task<string> GetAdminAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/GetBannedProfiles", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/GetBannedProfilesResponse")]
        string[] GetBannedProfiles();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/GetBannedProfiles", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/GetBannedProfilesResponse")]
        System.Threading.Tasks.Task<string[]> GetBannedProfilesAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/GetConnectedProfiles", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/GetConnectedProfilesResponse")]
        string[] GetConnectedProfiles();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/GetConnectedProfiles", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/GetConnectedProfilesResponse")]
        System.Threading.Tasks.Task<string[]> GetConnectedProfilesAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/IsAdmin", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/IsAdminResponse")]
        bool IsAdmin(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/IsAdmin", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/IsAdminResponse")]
        System.Threading.Tasks.Task<bool> IsAdminAsync(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/IsBanned", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/IsBannedResponse")]
        bool IsBanned(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/IsBanned", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/IsBannedResponse")]
        System.Threading.Tasks.Task<bool> IsBannedAsync(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/IsConnected", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/IsConnectedResponse")]
        bool IsConnected(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/IsConnected", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/IsConnectedResponse")]
        System.Threading.Tasks.Task<bool> IsConnectedAsync(string nickname);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/SetThePlayersAreInGame", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/SetThePlayersAreInGameResponse")]
        void SetThePlayersAreInGame();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/SetThePlayersAreInGame", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/SetThePlayersAreInGameResponse")]
        System.Threading.Tasks.Task SetThePlayersAreInGameAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/SetThePlayersAreNotInGame", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/SetThePlayersAreNotInGameResponse")]
        void SetThePlayersAreNotInGame();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/SetThePlayersAreNotInGame", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/SetThePlayersAreNotInGameResponse")]
        System.Threading.Tasks.Task SetThePlayersAreNotInGameAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/ThePlayersAreInGame", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/ThePlayersAreInGameResponse")]
        bool ThePlayersAreInGame();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILobbyNonCallbackMethods/ThePlayersAreInGame", ReplyAction="http://tempuri.org/ILobbyNonCallbackMethods/ThePlayersAreInGameResponse")]
        System.Threading.Tasks.Task<bool> ThePlayersAreInGameAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ILobbyNonCallbackMethodsChannel : Tests.ServiceLobbyForNonCallbackMethodsReference.ILobbyNonCallbackMethods, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class LobbyNonCallbackMethodsClient : System.ServiceModel.ClientBase<Tests.ServiceLobbyForNonCallbackMethodsReference.ILobbyNonCallbackMethods>, Tests.ServiceLobbyForNonCallbackMethodsReference.ILobbyNonCallbackMethods {
        
        public LobbyNonCallbackMethodsClient() {
        }
        
        public LobbyNonCallbackMethodsClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public LobbyNonCallbackMethodsClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public LobbyNonCallbackMethodsClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public LobbyNonCallbackMethodsClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string GetAdmin() {
            return base.Channel.GetAdmin();
        }
        
        public System.Threading.Tasks.Task<string> GetAdminAsync() {
            return base.Channel.GetAdminAsync();
        }
        
        public string[] GetBannedProfiles() {
            return base.Channel.GetBannedProfiles();
        }
        
        public System.Threading.Tasks.Task<string[]> GetBannedProfilesAsync() {
            return base.Channel.GetBannedProfilesAsync();
        }
        
        public string[] GetConnectedProfiles() {
            return base.Channel.GetConnectedProfiles();
        }
        
        public System.Threading.Tasks.Task<string[]> GetConnectedProfilesAsync() {
            return base.Channel.GetConnectedProfilesAsync();
        }
        
        public bool IsAdmin(string nickname) {
            return base.Channel.IsAdmin(nickname);
        }
        
        public System.Threading.Tasks.Task<bool> IsAdminAsync(string nickname) {
            return base.Channel.IsAdminAsync(nickname);
        }
        
        public bool IsBanned(string nickname) {
            return base.Channel.IsBanned(nickname);
        }
        
        public System.Threading.Tasks.Task<bool> IsBannedAsync(string nickname) {
            return base.Channel.IsBannedAsync(nickname);
        }
        
        public bool IsConnected(string nickname) {
            return base.Channel.IsConnected(nickname);
        }
        
        public System.Threading.Tasks.Task<bool> IsConnectedAsync(string nickname) {
            return base.Channel.IsConnectedAsync(nickname);
        }
        
        public void SetThePlayersAreInGame() {
            base.Channel.SetThePlayersAreInGame();
        }
        
        public System.Threading.Tasks.Task SetThePlayersAreInGameAsync() {
            return base.Channel.SetThePlayersAreInGameAsync();
        }
        
        public void SetThePlayersAreNotInGame() {
            base.Channel.SetThePlayersAreNotInGame();
        }
        
        public System.Threading.Tasks.Task SetThePlayersAreNotInGameAsync() {
            return base.Channel.SetThePlayersAreNotInGameAsync();
        }
        
        public bool ThePlayersAreInGame() {
            return base.Channel.ThePlayersAreInGame();
        }
        
        public System.Threading.Tasks.Task<bool> ThePlayersAreInGameAsync() {
            return base.Channel.ThePlayersAreInGameAsync();
        }
    }
}