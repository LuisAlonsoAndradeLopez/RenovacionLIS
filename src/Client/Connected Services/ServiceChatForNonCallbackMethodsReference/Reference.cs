﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Client.ServiceChatForNonCallbackMethodsReference {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="KeyValueDataContract", Namespace="http://schemas.datacontract.org/2004/07/Server.AuxiliaryDataContracts")]
    [System.SerializableAttribute()]
    public partial class KeyValueDataContract : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string KeyField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ValueField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Key {
            get {
                return this.KeyField;
            }
            set {
                if ((object.ReferenceEquals(this.KeyField, value) != true)) {
                    this.KeyField = value;
                    this.RaisePropertyChanged("Key");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Value {
            get {
                return this.ValueField;
            }
            set {
                if ((object.ReferenceEquals(this.ValueField, value) != true)) {
                    this.ValueField = value;
                    this.RaisePropertyChanged("Value");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceChatForNonCallbackMethodsReference.IChatNotCallbackMethods")]
    public interface IChatNotCallbackMethods {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatNotCallbackMethods/GetConnectedProfilesAndTheirMessages", ReplyAction="http://tempuri.org/IChatNotCallbackMethods/GetConnectedProfilesAndTheirMessagesRe" +
            "sponse")]
        Client.ServiceChatForNonCallbackMethodsReference.KeyValueDataContract[] GetConnectedProfilesAndTheirMessages();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatNotCallbackMethods/GetConnectedProfilesAndTheirMessages", ReplyAction="http://tempuri.org/IChatNotCallbackMethods/GetConnectedProfilesAndTheirMessagesRe" +
            "sponse")]
        System.Threading.Tasks.Task<Client.ServiceChatForNonCallbackMethodsReference.KeyValueDataContract[]> GetConnectedProfilesAndTheirMessagesAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IChatNotCallbackMethodsChannel : Client.ServiceChatForNonCallbackMethodsReference.IChatNotCallbackMethods, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ChatNotCallbackMethodsClient : System.ServiceModel.ClientBase<Client.ServiceChatForNonCallbackMethodsReference.IChatNotCallbackMethods>, Client.ServiceChatForNonCallbackMethodsReference.IChatNotCallbackMethods {
        
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
        
        public Client.ServiceChatForNonCallbackMethodsReference.KeyValueDataContract[] GetConnectedProfilesAndTheirMessages() {
            return base.Channel.GetConnectedProfilesAndTheirMessages();
        }
        
        public System.Threading.Tasks.Task<Client.ServiceChatForNonCallbackMethodsReference.KeyValueDataContract[]> GetConnectedProfilesAndTheirMessagesAsync() {
            return base.Channel.GetConnectedProfilesAndTheirMessagesAsync();
        }
    }
}
