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
using Profiles = Server.DatabaseManager.Profiles;

namespace Server.Services
{
    public class ServicePlayer : IPlayer
    {
        public long AddPlayer(Players players)
        {
            long generatedID = 0;

            try
            {
                players.Profiles = new Profiles
                {
                    LoginStatus = ProfileLoginStatuses.NotLogged.ToString()
                };
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                renovaciónLISDatabaseContainer.PlayersSet.Add(players);
                renovaciónLISDatabaseContainer.SaveChanges();
                generatedID = players.IDPlayer;
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return generatedID;
        }

        public List<Players> GetPlayers()
        {
            List<Players> players = null;

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                players = renovaciónLISDatabaseContainer.PlayersSet.ToList();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
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
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                players = renovaciónLISDatabaseContainer.PlayersSet.Where(e => e.IDPlayer == ID).FirstOrDefault();

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
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
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
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                players = renovaciónLISDatabaseContainer.PlayersSet.Where(e => e.NickName == nickname).FirstOrDefault();

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
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return player;
        }

        public List<Players> GetSpecifiedPlayers(string name)
        {
            List<Players> players = new List<Players>();

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                players = renovaciónLISDatabaseContainer.PlayersSet.Where(e => e.Names.Contains(name)).ToList();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return players;

        }

        public long ModifyPlayer(Players modifiedPlayer)
        {
            long generatedID = 0;

            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                Players playerToModify = renovaciónLISDatabaseContainer.PlayersSet.Find(modifiedPlayer.IDPlayer);
                if (playerToModify != null)
                {
                    playerToModify.BirthDate = modifiedPlayer.BirthDate;
                    playerToModify.Surnames = modifiedPlayer.Surnames;
                    playerToModify.Email = modifiedPlayer.Email;
                    playerToModify.Names = modifiedPlayer.Names;
                    playerToModify.NickName = modifiedPlayer.NickName;
                    renovaciónLISDatabaseContainer.SaveChanges();
                    generatedID = (int)playerToModify.IDPlayer;
                }
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return generatedID;
        }

        public void ModifyPasswordByEmail(String originalEmail, String newPassword)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                Players playerToModify = renovaciónLISDatabaseContainer.PlayersSet.FirstOrDefault(e => e.Email == originalEmail);

                if (playerToModify != null)
                {
                    playerToModify.Password = newPassword;
                }

                renovaciónLISDatabaseContainer.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

        }

        public bool TheEmailIsAlreadyRegisted(String emailToSearch)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                List<String> emails = renovaciónLISDatabaseContainer.PlayersSet.Select(row => row.Email).ToList();
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
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return false;
        }

        public bool TheNicknameIsAlreadyRegisted(String nicknameToSearch)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                List<String> nicknames = renovaciónLISDatabaseContainer.PlayersSet.Select(row => row.NickName).ToList();
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
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (SqlNullValueException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }

            return false;
        }


        //Only for use in the tests
        public void DeletePlayer(string playerNickname)
        {
            try
            {
                RenovaciónLISDatabaseContainer renovaciónLISDatabaseContainer = new RenovaciónLISDatabaseContainer();
                Players playerToDelete = renovaciónLISDatabaseContainer.PlayersSet.Where(e => e.NickName.Contains(playerNickname)).FirstOrDefault();

                renovaciónLISDatabaseContainer.PlayersSet.Remove(playerToDelete);
                renovaciónLISDatabaseContainer.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (DbUpdateException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandCompilationException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
            catch (EntityCommandExecutionException ex)
            {
                string logFilePath = Path.Combine(Directory.GetCurrentDirectory(), "../../../log.txt");
                File.AppendAllText(logFilePath, $"Exception: {ex}\n");
            }
        }
    }
}
