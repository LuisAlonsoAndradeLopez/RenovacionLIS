using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.Security.Cryptography.X509Certificates;
using System.ServiceModel;
using System.ServiceModel.Channels;
using ServicesTCP.AuxiliaryContracts;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceChat : IChat
    {
        public static Dictionary<string, IChatCallback> connectedProfiles = new Dictionary<string, IChatCallback>();
        public static List<KeyValueDataContract> connectedProfilesAndTheirMessages = new List<KeyValueDataContract>();

        //IsOneWay = true messages
        public void JoinChat(string nickname)
        {
            IChatCallback callback = OperationContext.Current.GetCallbackChannel<IChatCallback>();
        
            if (!connectedProfiles.ContainsKey(nickname))
            {
                connectedProfiles.Add(nickname, callback);
        
                KeyValueDataContract dictionary = new KeyValueDataContract
                {
                    Key = "Chat Server",
                    Value = $"{nickname} has joined to the chat"
                };
                connectedProfilesAndTheirMessages.Add(dictionary);
       
                UpdateChatToAllConectedProfiles();
            }
        }
        public void LeaveChat(string nickname)
        {
        
            if (connectedProfiles.ContainsKey(nickname))
            {
                connectedProfiles.Remove(nickname);
        
                KeyValueDataContract dictionary = new KeyValueDataContract
                {
                    Key = "Chat Server",
                    Value = $"{nickname} left the chat"
                };
                connectedProfilesAndTheirMessages.Add(dictionary);                              
        
                UpdateChatToAllConectedProfiles();
        
                if (!connectedProfiles.Any())
                {
                    connectedProfilesAndTheirMessages.Clear();
                }
            }
        }
        
        public void SendMessage(string senderNickname, string message)
        {
            KeyValueDataContract dictionary = new KeyValueDataContract
            {
                Key = senderNickname,
                Value = message
            };        
            connectedProfilesAndTheirMessages.Add(dictionary);
        
            UpdateChatToAllConectedProfiles();
        }

        //IsOneWay = false messages
        public List<KeyValueDataContract> GetConnectedProfilesAndTheirMessages()
        {
            List<KeyValueDataContract> result = connectedProfilesAndTheirMessages.Select(kv =>
            new KeyValueDataContract { Key = kv.Key, Value = kv.Value }).ToList();

            return result;
        }


        //Auxiliary methods
        private void UpdateChatToAllConectedProfiles()
        {
            foreach (var chatCallback in connectedProfiles.Values)
            {
                chatCallback.UpdateChat();
            }
        }
    }
}
