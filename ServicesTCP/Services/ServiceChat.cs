using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class ServiceChat : IChat
    {
        private List<IChatCallback> clients = new List<IChatCallback>();

        public void JoinChat(string username)
        {
            var callback = OperationContext.Current.GetCallbackChannel<IChatCallback>();
            clients.Add(callback);

            // Notify existing clients about the new user
            foreach (var client in clients)
            {
                client.ReceiveMessage("Chat Server", $"{username} joined the chat.");
            }
        }

        public void LeaveChat(string username)
        {
            var callback = OperationContext.Current.GetCallbackChannel<IChatCallback>();
            clients.Remove(callback);

            // Notify remaining clients about the user leaving
            foreach (var client in clients)
            {
                client.ReceiveMessage("Chat Server", $"{username} left the chat.");
            }
        }

        public void SendMessage(string sender, string message)
        {
            // Broadcast the message to all connected clients
            foreach (var client in clients)
            {
                client.ReceiveMessage(sender, message);
            }
        }
    }
}
