using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.ServiceModel;
using System.ServiceModel.Channels;
using ServicesTCP.AuxiliaryContracts;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceChat : IChat
    {
        public static Dictionary<string, IChatCallback> connectedProfiles = new Dictionary<string, IChatCallback>();
        public static Dictionary<string, string> connectedProfilesAndTheirMessages = new Dictionary<string, string>();


        //IsOneWay = true messages
        public void JoinChat(string nickname)
        {
            IChatCallback callback = OperationContext.Current.GetCallbackChannel<IChatCallback>();

            if (!connectedProfiles.ContainsKey(nickname))
            {
                connectedProfiles.Add(nickname, callback);
                //connectedProfilesAndTheirMessages.Add("Chat Server", $"{nickname} has joined to the chat");

                foreach (var profilesAndOperationContract in connectedProfiles)
                {
                    Console.WriteLine($"Usuario: {profilesAndOperationContract.Key}, OperationContract: {profilesAndOperationContract.Value}");
                }

                foreach (var profilesAndMessages in connectedProfilesAndTheirMessages)
                {
                    Console.WriteLine($"Usuario: {profilesAndMessages.Key}, Mensaje: {profilesAndMessages.Value}");
                }

                UpdateChatToAllConectedProfiles();
            }
        }
        public void LeaveChat(string nickname)
        {

            if (connectedProfiles.ContainsKey(nickname))
            {
                connectedProfiles.Remove(nickname);
                Console.WriteLine("Pu");
                //connectedProfilesAndTheirMessages.Add("Chat Server", $"{nickname} left the chat");  //Esta linea genera el problema, el simbolo de pesos genera el problema al parecer
                                

                UpdateChatToAllConectedProfiles();

                if (!connectedProfiles.Any())
                {
                    connectedProfilesAndTheirMessages.Clear();
                }
            }
        }

        public void SendMessage(string senderNickname, string message)
        {
            Console.WriteLine("Pu");
            connectedProfilesAndTheirMessages.Add(senderNickname, message);
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
