using System;
using System.ServiceModel;
using ServicesTCP.Services;

namespace ServerHoster
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceHost serviceChatHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceChat));
            serviceChatHost.Open();
            Console.WriteLine("ServiceChatHost started!!!");

            ServiceHost serviceLivePlayerHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceLivePlayer));
            serviceLivePlayerHost.Open();
            Console.WriteLine("ServiceLivePlayerHost started!!!");

            ServiceHost serviceFriendRequestHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceFriendRequest));
            serviceFriendRequestHost.Open();
            Console.WriteLine("ServiceFriendRequestHost started!!!");

            ServiceHost servicePlayerHost = new ServiceHost(typeof(ServicesTCP.Services.ServicePlayer));
            servicePlayerHost.Open();
            Console.WriteLine("ServicePlayerHost started!!!");
            
            ServiceHost serviceProfileHost = new ServiceHost(typeof(ServicesTCP.Services.ServiceProfile));
            serviceProfileHost.Open();
            Console.WriteLine("ServiceProfileHost started!!!");

            Console.ReadLine();
        }
    }
}