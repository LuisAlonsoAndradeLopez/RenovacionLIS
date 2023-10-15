using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    //[ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, Name = "ServicePlayer")]
    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public class ServicePlayer : IPlayer
    {
        int IPlayer.AddPlayer(Players player)
        {
            int generatedID = 0;

            try
            {
                player.Profiles = new Profiles();
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                databaseModelContainer.PlayersSet.Add(player);
                databaseModelContainer.SaveChanges();
                generatedID = (int)player.IDPlayer;
                String message = "Usuario Wardado Exitosamente";
                IPlayerCallback callback = OperationContext.Current.GetCallbackChannel<IPlayerCallback>();
                callback.Response(message);
                Console.WriteLine(generatedID);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return generatedID;
        }

        Players IPlayer.GetPlayerByID(int ID)
        {
            Players player = null;

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                player = (Players)databaseModelContainer.PlayersSet.Where(e => e.IDPlayer == ID);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return player;
        }

        List<Players> IPlayer.GetPlayers()
        {
            List<Players> players = null;

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                players = databaseModelContainer.PlayersSet.ToList();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return players;
        }

        List<Players> IPlayer.GetSpecifiedPlayers(string name)
        {
            List<Players> players = null;

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                players = databaseModelContainer.PlayersSet.Where(e => e.Name.Contains(name)).ToList();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return players;

        }

        int IPlayer.ModifyPlayer(Players modifiedPlayer)
        {
            int generatedID = 0;

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                Players playerToModify = databaseModelContainer.PlayersSet.Find(modifiedPlayer.IDPlayer);
                if(playerToModify != null)
                {
                    playerToModify.AlternateEmail = modifiedPlayer.AlternateEmail;
                    playerToModify.BirthDate = modifiedPlayer.BirthDate;
                    playerToModify.BirthDay = modifiedPlayer.BirthDay;
                    playerToModify.BirthDate = modifiedPlayer.BirthDate;
                    playerToModify.BirthMonth = modifiedPlayer.BirthMonth;
                    playerToModify.BirthYear = modifiedPlayer.BirthYear;
                    playerToModify.FirstSurname = modifiedPlayer.FirstSurname;
                    playerToModify.MainEmail = modifiedPlayer.MainEmail;
                    playerToModify.Name = modifiedPlayer.Name;
                    playerToModify.NickName = modifiedPlayer.NickName;
                    playerToModify.SecondSurname = modifiedPlayer.SecondSurname;
                    databaseModelContainer.SaveChanges();
                    generatedID = (int)playerToModify.IDPlayer;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return generatedID;
        }
    }
}
