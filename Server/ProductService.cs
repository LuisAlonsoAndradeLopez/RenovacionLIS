using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using Contracts;

namespace Server
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class ProductService : IPlayer
    {
        public string[] GetStrings()
        {
                return new[] { "server1", "server2", "server3" };
        }
    }
}
