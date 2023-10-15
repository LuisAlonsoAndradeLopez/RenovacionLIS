using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {

            InstanceContext context = new InstanceContext(new CallbackHandler());

            ServicePlayerReference.PlayerClient client = new ServicePlayerReference.PlayerClient(context);
            //System.ServiceModel.InstanceContext callbackInstance = new System.ServiceModel.InstanceContext();
            //ServicePlayerReference.Players playersTable = new ServicePlayerReference.Players();


            //Console.WriteLine(client.GetPlayers());

            client.AddPlayer(new ServicePlayerReference.Players());

            Console.WriteLine("Exito");
            //new CallbackHandler().Response("Meeeeeee");
            Console.ReadLine();
        }
    }

    [CallbackBehavior (UseSynchronizationContext = false)]
    class CallbackHandler : ServicePlayerReference.IPlayerCallback
    {
        public void Response(String response)
        {
            Console.WriteLine(response);
        }
    }
}
