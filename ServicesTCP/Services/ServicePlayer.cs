using System;
using System.Collections.Generic;
using System.Linq;
using DatabaseManager;
using domain;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServicePlayer : IPlayer
    {
        public long AddPlayer(Players player)
        {
            long generatedID = 0;

            try
            {
                player.Profiles = new Profiles();
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                databaseModelContainer.PlayersSet.Add(player);
                databaseModelContainer.SaveChanges();
                generatedID = player.IDPlayer;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return generatedID;
        }

        public List<Players> GetPlayers()
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

        public Player GetPlayerByID(long ID)
        {
            Player player = new Player();
            Players players = new Players();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                players = databaseModelContainer.PlayersSet.Where(e => e.IDPlayer == ID).FirstOrDefault();

                if(players != null)
                {
                    player.IDPlayer = players.IDPlayer;
                    player.Names = players.Names;
                    player.Surnames = players.Surnames;
                    player.Email = players.Email;
                    player.NickName = players.NickName;
                    player.BirthDate = players.BirthDate;
                    player.Password = players.Password;
                }
                else
                {
                    player = null;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return player;
        }

        public Player GetPlayerByNickname(string nickname)
        {
            Player player = new Player();
            Players players = new Players();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                players = databaseModelContainer.PlayersSet.Where(e => e.NickName == nickname).FirstOrDefault();

                if(players != null)
                {
                    player.IDPlayer = players.IDPlayer;
                    player.Names = players.Names;
                    player.Surnames = players.Surnames;
                    player.Email = players.Email;
                    player.NickName = players.NickName;
                    player.BirthDate = players.BirthDate;
                    player.Password = players.Password;
                }
                else
                {
                    player = null;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return player;
        }

        public List<Players> GetSpecifiedPlayers(string name)
        {
            List<Players> players = null;

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                players = databaseModelContainer.PlayersSet.Where(e => e.Names.Contains(name)).ToList();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return players;

        }

        public long ModifyPlayer(Players modifiedPlayer)
        {
            long generatedID = 0;

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                Players playerToModify = databaseModelContainer.PlayersSet.Find(modifiedPlayer.IDPlayer);
                if(playerToModify != null)
                {
                    playerToModify.BirthDate = modifiedPlayer.BirthDate;
                    playerToModify.Surnames = modifiedPlayer.Surnames;
                    playerToModify.Email = modifiedPlayer.Email;
                    playerToModify.Names = modifiedPlayer.Names;
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

        public void ModifyPasswordByEmail(String originalEmail, String newPassword)
        {
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

        }

        public bool TheEmailIsAlreadyRegisted(String emailToSearch)
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

        public bool TheNicknameIsAlreadyRegisted(String nicknameToSearch)
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
