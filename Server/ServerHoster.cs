using System;
using System.ServiceModel;
using ServicesTCP.Services;

namespace ServerHoster
{
    class Program
    {
        static void Main(string[] args)
        {
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