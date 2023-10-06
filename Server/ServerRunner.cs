using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using Contracts;

namespace Server
{
    internal class ServerRunner
    {
        static void Main(string[] args)
        {
            var uris = new Uri[1];
            string addr = "net.tcp://localhost:4345/ProductService";
            uris[0] = new Uri(addr);
            IPlayer player = new Player();
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
