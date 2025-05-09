using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using Server.AuxiliaryDataContracts;
using Server.ServiceContracts;

namespace Server.Services
{
    public class ServiceChatForNonCallbackMethods : IChatNotCallbackMethods
    {
        private readonly ServiceChatForCallbackMethods serviceChatForCallbackMethods;


        #region Constructors
        public ServiceChatForNonCallbackMethods()
        {
            serviceChatForCallbackMethods = new ServiceChatForCallbackMethods();    
        }
        #endregion



        #region Non-Callback methods
        public List<KeyValueDataContract> GetConnectedProfilesAndTheirMessages()
        {
            return serviceChatForCallbackMethods.GetConnectedProfilesAndTheirMessages();
        }
        #endregion



        #region Auxiliary methods for do the tests
        #endregion
    }



    public class ServiceChatForCallbackMethods : IChatCallbackMethods
    {
        private static readonly Dictionary<string, IChatCallback> connectedProfiles = new Dictionary<string, IChatCallback>();
        private static readonly List<KeyValueDataContract> connectedProfilesAndTheirMessages = new List<KeyValueDataContract>();



        #region Callback methods
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
        #endregion
        


        #region Auxiliary methods
        private void UpdateChatToAllConectedProfiles()
        {
            foreach (var chatCallback in connectedProfiles.Values)
            {
                chatCallback.UpdateChat();
            }
        }
        #endregion



        #region Methods for use by ServiceChatForCallbackMethods
        internal List<KeyValueDataContract> GetConnectedProfilesAndTheirMessages()
        {
            return connectedProfilesAndTheirMessages;
        }
        #endregion



        #region Auxiliary methods for do the tests
        public bool TheProfileIsConnected(string username)
        {
            return connectedProfiles.ContainsKey(username);
        }
        #endregion
    }
}
