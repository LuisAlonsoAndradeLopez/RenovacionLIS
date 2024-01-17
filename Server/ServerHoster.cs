using System;
using System.ServiceModel;
using System.ServiceModel.Description;
using ServicesTCP.Services;

namespace ServerHoster
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceHost serviceChatForNonCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceChatForNonCallbackMethods));
            serviceChatForNonCallbackMethodsHost.Open();
            Console.WriteLine("ServiceChatForNonCallbackMethodsHost started!!!");

            ServiceHost serviceChatForCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceChatForCallbackMethods));
            serviceChatForCallbackMethodsHost.Open();
            Console.WriteLine("ServiceChatForCallbackMethodsHost started!!!");
            
            ServiceHost serviceFriendRequestForNonCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceFriendRequestForNonCallbackMethods));
            serviceFriendRequestForNonCallbackMethodsHost.Open();
            Console.WriteLine("ServiceFriendRequestForNonCallbackMethodsHost started!!!");
            
            ServiceHost serviceFriendRequestForCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceFriendRequestForCallbackMethods));
            serviceFriendRequestForCallbackMethodsHost.Open();
            Console.WriteLine("ServiceFriendRequestForCallbackMethodsHost started!!!");

            ServiceHost serviceMultiplayerCrosswordForNonCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceMultiplayerCrosswordForNonCallbackMethods));
            serviceMultiplayerCrosswordForNonCallbackMethodsHost.Open();
            Console.WriteLine("ServiceMultiplayerCrosswordForNonCallbackMethodsHost started!!!");
            
            ServiceHost serviceMultiplayerCrosswordForCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceMultiplayerCrosswordForCallbackMethods));
            serviceMultiplayerCrosswordForCallbackMethodsHost.Open();
            Console.WriteLine("ServiceMultiplayerCrosswordForCallbackMethodsHost started!!!");

            ServiceHost serviceLobbyForNonCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceLobbyForNonCallbackMethods));
            serviceLobbyForNonCallbackMethodsHost.Open();
            Console.WriteLine("ServiceLobbyForNonCallbackMethodsHost started!!!");
            
            ServiceHost serviceLobbyForCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceLobbyForCallbackMethods));
            serviceLobbyForCallbackMethodsHost.Open();
            Console.WriteLine("ServiceLobbyForCallbackMethodsHost started!!!");
            
            ServiceHost servicePlayerHost = new ServiceHost(typeof(ServicesTCP.Services.ServicePlayer));
            servicePlayerHost.Open();
            Console.WriteLine("ServicePlayerHost started!!!");
            
            ServiceHost serviceProfileForNonCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceProfileForNonCallbackMethods));
            serviceProfileForNonCallbackMethodsHost.Open();
            Console.WriteLine("ServiceProfileForNonCallbackMethodsHost started!!!");
            
            ServiceHost serviceProfileForCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceProfileForCallbackMethods));
            serviceProfileForCallbackMethodsHost.Open();
            Console.WriteLine("ServiceProfileForCallbackMethodsHost started!!!");

            Console.ReadLine();            
        }
    }
}