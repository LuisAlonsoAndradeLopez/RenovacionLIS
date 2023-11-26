using System.Collections.Generic;
using System.ServiceModel;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceChat : IChat
    {
        public static Dictionary<string, IChatCallback> connectedProfiles = new Dictionary<string, IChatCallback>();

        public void JoinChat(string username)
        {
            IChatCallback callback = OperationContext.Current.GetCallbackChannel<IChatCallback>();

            if (!connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Add(username, callback);

                UpdateChatToAllConnectedClients("Chat Server", $"{username} joined the chat.");
            }
        }

        public void LeaveChat(string username)
        {
            if (connectedProfiles.ContainsKey(username))
            {
                connectedProfiles.Remove(username);

                UpdateChatToAllConnectedClients("Chat Server", $"{username} left the chat");
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
