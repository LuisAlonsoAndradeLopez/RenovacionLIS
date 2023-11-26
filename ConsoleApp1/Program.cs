using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Media;
using System.Net.Http.Headers;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using NAudio.Wave;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            StaticTest staticTest = new StaticTest();
            staticTest.setToInt(1);
            staticTest.setToInt(2);
            staticTest.setToInt(3);
            Console.Write(StaticTest.x);
            //string incompletePath = Path.GetFullPath("resources/songs/Apprentice (Instrumental) - Friday Night Funkin vs Dave and Bambi Golden Apple OST.wav");
            //string pathPartToDelete = "ConsoleApp1\\bin\\Debug\\";
            //
            //string completePath = incompletePath.Replace(pathPartToDelete, "");
            //
            //SoundPlayer mainMenuSong = new SoundPlayer(completePath);
            //mainMenuSong.PlaySync();
            //
            //Console.ReadLine();
            /*
            InstanceContext context = new InstanceContext(new CallbackHandler());

            ServicePlayerReference.PlayerClient client = new ServicePlayerReference.PlayerClient(context);

            client.AddPlayer(new ServicePlayerReference.Players());

            Console.WriteLine("Exito");
            new CallbackHandler().Response("Meeeeeee");
            Console.ReadLine();*/
        }
    }

    public class StaticTest
    {
        public static int x;

        public void setToInt(int i)
        {
            x += i;
        }
    }


    /*
    [CallbackBehavior (UseSynchronizationContext = false)]
    class CallbackHandler : ServicePlayerReference.IPlayerCallback
    {
        public void Response(String response)
        {
            Console.WriteLine(response);
        }
    }*/
}
