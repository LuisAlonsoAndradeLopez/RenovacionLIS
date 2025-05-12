using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlTypes;
using System.IO;
using System.Linq;
using Server.DatabaseManager;
using Server.Domain;
using Server.DomainStatuses;
using Server.ServiceContracts;

namespace Server.Services
{
    public class ServicePlayer : IPlayer
    {
        public long AddPlayer(Players player)
        {
            long generatedID = 0;

            try
            {
                player.Profiles = new Profiles
                {
                    LoginStatus = ProfileLoginStatuses.NotLogged.ToString()
                };
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                databaseModelContainer.PlayersSet.Add(player);
                databaseModelContainer.SaveChanges();
                generatedID = player.IDPlayer;
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
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
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
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

                if (players != null)
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
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
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

                if (players != null)
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
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return player;
        }

        public List<Players> GetSpecifiedPlayers(string name)
        {
            List<Players> players = new List<Players>();

            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                players = databaseModelContainer.PlayersSet.Where(e => e.Names.Contains(name)).ToList();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
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
                if (playerToModify != null)
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
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
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
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

        }

        public bool TheEmailIsAlreadyRegisted(String emailToSearch)
        {
            try
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
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return false;
        }

        public bool TheNicknameIsAlreadyRegisted(String nicknameToSearch)
        {
            try
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
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return false;
        }


        //Only for use in the tests
        public void DeletePlayer(string playerNickname)
        {
            try
            {
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                Players playerToDelete = databaseModelContainer.PlayersSet.Where(e => e.NickName.Contains(playerNickname)).FirstOrDefault();

                databaseModelContainer.PlayersSet.Remove(playerToDelete);
                databaseModelContainer.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }
    }
}
