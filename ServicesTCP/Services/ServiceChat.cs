using System;
using System.Collections.Generic;
using System.Globalization;
using System.Resources;
using System.ServiceModel;
using System.ServiceModel.Channels;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceChat : IChat
    {
        public static Dictionary<string, IChatCallback> connectedProfiles = new Dictionary<string, IChatCallback>();

        public void JoinChat(string nickname)
        {
            IChatCallback callback = OperationContext.Current.GetCallbackChannel<IChatCallback>();

            if (!connectedProfiles.ContainsKey(nickname))
            {
                connectedProfiles.Add(nickname, callback);
                UpdateChatToAllConnectedClients("Chat Server", $"{nickname} has joined to the chat");
            }
        }
        public void LeaveChat(string nickname)
        {
            if (connectedProfiles.ContainsKey(nickname))
            {
                connectedProfiles.Remove(nickname);
                UpdateChatToAllConnectedClients("Chat Server", $"{nickname} left the chat");
            }
        }

        public void SendMessage(string sender, string message)
        {
            UpdateChatToAllConnectedClients(sender, message);
        }

        public void UpdateChatToAllConnectedClients(string senderNickname, string message)
        {
            foreach (var chatCallback in connectedProfiles.Values)
            {
                chatCallback.UpdateChat(senderNickname, message);
            }
        }
    }
}
