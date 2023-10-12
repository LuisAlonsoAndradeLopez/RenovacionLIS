using System;
using System.ServiceModel;
using ServicesTCP.Services;

namespace ServerHoster
{
    class Program
    {
        static void Main(string[] args)
        {
            using (ServiceHost servicePlayerHost = new ServiceHost(typeof(ServicesTCP.Services.ServicePlayer)))
            {
                servicePlayerHost.Open();
                Console.WriteLine("ServicePlayerHost started!!!");
                Console.ReadLine();
            }
            /*
            ServiceHost serviceHost = null;
            try
            {
                serviceHost = new ServiceHost(typeof(ServicePlayer));
                serviceHost.Open();

                Console.WriteLine("Service is running. Press Enter to exit.");
                Console.ReadLine();
            }
            finally
            {
                serviceHost?.Close();
            }*/
        }
    }
}



/*
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using ServicesTCP.ServiceContracts;
using ServicesTCP.Services;

namespace Server
{
    internal class ServerHoster
    {
        static void Main(string[] args)
        {
            var uris = new Uri[1];
            string addr = "net.tcp://localhost:4345/ServicePlayer";
            uris[0] = new Uri(addr);
            Console.WriteLine(uris[0].ToString());
            IPlayer player = new ServicePlayer();
            ServiceHost host = new ServiceHost(player, uris);
            var binding = new NetTcpBinding(SecurityMode.None);
            host.AddServiceEndpoint(typeof(IPlayer), binding, "");
            host.Opened += HostOpening;
            host.Open();
            Console.ReadLine();
        }

        private static void HostOpening(object sender, EventArgs eventArgs)
        {
            Console.WriteLine("El servicio de WCF ha iniciado");
        }
    }
}
*/