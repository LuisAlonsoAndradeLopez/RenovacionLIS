using System;
using System.Collections.Concurrent;
using System.Linq;
using System.ServiceModel;
using Contracts;

namespace Client
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Presiona una tecla para empezar");
            Console.ReadLine();
            var uri = "net.tcp://localhost:4345/ProductService";
            NetTcpBinding binding = new NetTcpBinding(SecurityMode.None);
            var channel = new ChannelFactory<IPlayer>(binding);
            var endpoint = new EndpointAddress(uri);
            var proxy = channel.CreateChannel(endpoint);
            proxy?.GetStrings().ToList().ForEach(p => Console.WriteLine(p));
            Console.ReadLine();
        }
    }
}
