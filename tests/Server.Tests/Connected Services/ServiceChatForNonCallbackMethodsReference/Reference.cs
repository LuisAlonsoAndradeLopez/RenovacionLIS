﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tests.ServiceChatForNonCallbackMethodsReference {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceChatForNonCallbackMethodsReference.IChatNotCallbackMethods")]
    public interface IChatNotCallbackMethods {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatNotCallbackMethods/GetConnectedProfilesAndTheirMessages", ReplyAction="http://tempuri.org/IChatNotCallbackMethods/GetConnectedProfilesAndTheirMessagesRe" +
            "sponse")]
        Renovación_LIS_Client.ServiceChatForNonCallbackMethodsReference.KeyValueDataContract[] GetConnectedProfilesAndTheirMessages();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatNotCallbackMethods/GetConnectedProfilesAndTheirMessages", ReplyAction="http://tempuri.org/IChatNotCallbackMethods/GetConnectedProfilesAndTheirMessagesRe" +
            "sponse")]
        System.Threading.Tasks.Task<Renovación_LIS_Client.ServiceChatForNonCallbackMethodsReference.KeyValueDataContract[]> GetConnectedProfilesAndTheirMessagesAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IChatNotCallbackMethodsChannel : Tests.ServiceChatForNonCallbackMethodsReference.IChatNotCallbackMethods, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ChatNotCallbackMethodsClient : System.ServiceModel.ClientBase<Tests.ServiceChatForNonCallbackMethodsReference.IChatNotCallbackMethods>, Tests.ServiceChatForNonCallbackMethodsReference.IChatNotCallbackMethods {
        
        public ChatNotCallbackMethodsClient() {
        }
        
        public ChatNotCallbackMethodsClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ChatNotCallbackMethodsClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ChatNotCallbackMethodsClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ChatNotCallbackMethodsClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public Renovación_LIS_Client.ServiceChatForNonCallbackMethodsReference.KeyValueDataContract[] GetConnectedProfilesAndTheirMessages() {
            return base.Channel.GetConnectedProfilesAndTheirMessages();
        }
        
        public System.Threading.Tasks.Task<Renovación_LIS_Client.ServiceChatForNonCallbackMethodsReference.KeyValueDataContract[]> GetConnectedProfilesAndTheirMessagesAsync() {
            return base.Channel.GetConnectedProfilesAndTheirMessagesAsync();
        }
    }
}
