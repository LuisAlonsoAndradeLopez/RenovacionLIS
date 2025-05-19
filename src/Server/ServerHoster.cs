using System;
using System.IO;
using System.ServiceModel;
using Server.Services;

namespace Server
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                ServiceHost serviceChatForNonCallbackMethodsHost = new ServiceHost(typeof(ServiceChatForNonCallbackMethods));
                serviceChatForNonCallbackMethodsHost.Open();
                Console.WriteLine("ServiceChatForNonCallbackMethodsHost started!!!");

                ServiceHost serviceChatForCallbackMethodsHost = new ServiceHost(typeof(ServiceChatForCallbackMethods));
                serviceChatForCallbackMethodsHost.Open();
                Console.WriteLine("ServiceChatForCallbackMethodsHost started!!!");
            
                ServiceHost serviceFriendRequestForNonCallbackMethodsHost = new ServiceHost(typeof(ServiceFriendRequestForNonCallbackMethods));
                serviceFriendRequestForNonCallbackMethodsHost.Open();
                Console.WriteLine("ServiceFriendRequestForNonCallbackMethodsHost started!!!");
            
                ServiceHost serviceFriendRequestForCallbackMethodsHost = new ServiceHost(typeof(ServiceFriendRequestForCallbackMethods));
                serviceFriendRequestForCallbackMethodsHost.Open();
                Console.WriteLine("ServiceFriendRequestForCallbackMethodsHost started!!!");

                ServiceHost serviceMultiplayerCrosswordForNonCallbackMethodsHost = new ServiceHost(typeof(ServiceMultiplayerCrosswordForNonCallbackMethods));
                serviceMultiplayerCrosswordForNonCallbackMethodsHost.Open();
                Console.WriteLine("ServiceMultiplayerCrosswordForNonCallbackMethodsHost started!!!");
            
                ServiceHost serviceMultiplayerCrosswordForCallbackMethodsHost = new ServiceHost(typeof(ServiceMultiplayerCrosswordForCallbackMethods));
                serviceMultiplayerCrosswordForCallbackMethodsHost.Open();
                Console.WriteLine("ServiceMultiplayerCrosswordForCallbackMethodsHost started!!!");

                ServiceHost serviceLobbyForNonCallbackMethodsHost = new ServiceHost(typeof(ServiceLobbyForNonCallbackMethods));
                serviceLobbyForNonCallbackMethodsHost.Open();
                Console.WriteLine("ServiceLobbyForNonCallbackMethodsHost started!!!");
            
                ServiceHost serviceLobbyForCallbackMethodsHost = new ServiceHost(typeof(ServiceLobbyForCallbackMethods));
                serviceLobbyForCallbackMethodsHost.Open();
                Console.WriteLine("ServiceLobbyForCallbackMethodsHost started!!!");
            
                ServiceHost servicePlayerHost = new ServiceHost(typeof(ServicePlayer));
                servicePlayerHost.Open();
                Console.WriteLine("ServicePlayerHost started!!!");
            
                ServiceHost serviceProfileForNonCallbackMethodsHost = new ServiceHost(typeof(ServiceProfileForNonCallbackMethods));
                serviceProfileForNonCallbackMethodsHost.Open();
                Console.WriteLine("ServiceProfileForNonCallbackMethodsHost started!!!");
            
                ServiceHost serviceProfileForCallbackMethodsHost = new ServiceHost(typeof(ServiceProfileForCallbackMethods));
                serviceProfileForCallbackMethodsHost.Open();
                Console.WriteLine("ServiceProfileForCallbackMethodsHost started!!!");
                Console.ReadLine();          
            }
            catch (Exception ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }
    }
}