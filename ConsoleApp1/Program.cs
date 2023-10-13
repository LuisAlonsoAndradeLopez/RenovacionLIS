using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            ServicePlayerReference.PlayerClient client = new ServicePlayerReference.PlayerClient();
            //ServicePlayerReference.Players playersTable = new ServicePlayerReference.Players();


            Console.WriteLine(client.GetPlayers());

            //client.AddPlayer(new ServicePlayerReference.Players());

            Console.WriteLine("Exito");
            Console.ReadLine();
        }
    }
}
