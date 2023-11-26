using System;
using System.ServiceModel;

namespace ServerHoster
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceHost serviceChatHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceChat));
            serviceChatHost.Open();
            Console.WriteLine("ServiceChatHost started!!!");

            ServiceHost serviceFriendRequestHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceFriendRequest));
            serviceFriendRequestHost.Open();
            Console.WriteLine("ServiceFriendRequestHost started!!!");

            ServiceHost serviceFriendRequestForCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceFriendRequestForCallbackMethods));
            serviceFriendRequestForCallbackMethodsHost.Open();
            Console.WriteLine("ServiceFriendRequestForCallbackMethodsHost started!!!");

            ServiceHost servicePlayerHost = new ServiceHost(typeof(ServicesTCP.Services.ServicePlayer));
            servicePlayerHost.Open();
            Console.WriteLine("ServicePlayerHost started!!!");
            
            ServiceHost serviceProfileHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceProfile));
            serviceProfileHost.Open();
            Console.WriteLine("ServiceProfileHost started!!!");

            ServiceHost serviceProfileForCallbackMethodsHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceProfileForCallbackMethods));
            serviceProfileForCallbackMethodsHost.Open();
            Console.WriteLine("ServiceProfileForCallbackMethodsHost started!!!");

            Console.ReadLine();
        }
    }
}