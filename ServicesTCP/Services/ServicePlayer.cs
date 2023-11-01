using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using DatabaseManager;
using domain;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    //[ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, Name = "ServicePlayer")]
    //[ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
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
                //String message = "Usuario Wardado Exitosamente";
                //IPlayerCallback callback = OperationContext.Current.GetCallbackChannel<IPlayerCallback>();
                //Thread.Sleep(50);
                //callback.Response(message);
                //Console.WriteLine(generatedID);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return generatedID;
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

        Player IPlayer.GetPlayerByID(int ID)
        {
            Player player = new Player();
            Players players = new Players();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                players = databaseModelContainer.PlayersSet.Where(e => e.IDPlayer == ID).FirstOrDefault();

                player.IDPlayer = players.IDPlayer;
                player.Name = players.Name;
                player.FirstSurname = players.FirstSurname;
                player.Email = players.Email;
                player.NickName = players.NickName;
                player.BirthDate = players.BirthDate;
                player.Password = players.Password;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return player;
        }

        Player IPlayer.GetPlayerByNickname(string nickname)
        {
            Player player = new Player();
            Players players = new Players();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                players = databaseModelContainer.PlayersSet.Where(e => e.NickName == nickname).FirstOrDefault();

                player.IDPlayer = players.IDPlayer;
                player.Name = players.Name;
                player.FirstSurname = players.FirstSurname;
                player.Email = players.Email;
                player.NickName = players.NickName;
                player.BirthDate = players.BirthDate;
                player.Password = players.Password;
                //player.Profile = players.Profiles;

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return player;
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
                    playerToModify.BirthDate = modifiedPlayer.BirthDate;
                    playerToModify.FirstSurname = modifiedPlayer.FirstSurname;
                    playerToModify.Email = modifiedPlayer.Email;
                    playerToModify.Name = modifiedPlayer.Name;
                    playerToModify.NickName = modifiedPlayer.NickName;
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

        int IPlayer.ModifyPasswordByEmail(String originalEmail, String newPassword)
        {
            int generatedID = 0;

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                Players playerToModify = databaseModelContainer.PlayersSet.FirstOrDefault(e => e.Email == originalEmail);

                if (playerToModify != null)
                {
                    playerToModify.Password = newPassword;
                }

                databaseModelContainer.SaveChanges();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return generatedID;
        }

        bool IPlayer.TheEmailIsAlreadyRegisted(String emailToSearch)
        {
            DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
            List<String> emails = databaseModelContainer.PlayersSet.Select(row => row.Email).ToList();
            foreach (String email in emails)
            {
                if (email == emailToSearch)
                {
                    return true;
                }
            }
            return false;
        }

        bool IPlayer.TheNicknameIsAlreadyRegisted(String nicknameToSearch)
        {
            DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
            List<String> nicknames = databaseModelContainer.PlayersSet.Select(row => row.NickName).ToList();
            foreach (String nickname in nicknames)
            {
                if (nickname == nicknameToSearch)
                {
                    return true;
                }
            }
            return false;
        }
    }
}
