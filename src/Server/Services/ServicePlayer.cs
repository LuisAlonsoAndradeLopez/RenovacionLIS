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
using ProfilesSet = Server.DatabaseManager.ProfilesSet;

namespace Server.Services
{
    public class ServicePlayer : IPlayer
    {
        public long AddPlayer(PlayersSet playersSet)
        {
            long generatedID = 0;

            try
            {
                playersSet.ProfilesSet = new ProfilesSet
                {
                    LoginStatus = ProfileLoginStatuses.NotLogged.ToString()
                };
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                renovaciónLISDatabase.PlayersSet.Add(playersSet);
                renovaciónLISDatabase.SaveChanges();
                generatedID = playersSet.IDPlayer;
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

        public List<PlayersSet> GetPlayers()
        {
            List<PlayersSet> players = null;

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                players = renovaciónLISDatabase.PlayersSet.ToList();
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
            PlayersSet playersSet = new PlayersSet();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                playersSet = renovaciónLISDatabase.PlayersSet.Where(e => e.IDPlayer == ID).FirstOrDefault();

                if (playersSet != null)
                {
                    player.IDPlayer = playersSet.IDPlayer;
                    player.Names = playersSet.Names;
                    player.Surnames = playersSet.Surnames;
                    player.Email = playersSet.Email;
                    player.NickName = playersSet.NickName;
                    player.BirthDate = playersSet.BirthDate;
                    player.Password = playersSet.Password;
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
            PlayersSet playersSet = new PlayersSet();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                playersSet = renovaciónLISDatabase.PlayersSet.Where(e => e.NickName == nickname).FirstOrDefault();

                if (playersSet != null)
                {
                    player.IDPlayer = playersSet.IDPlayer;
                    player.Names = playersSet.Names;
                    player.Surnames = playersSet.Surnames;
                    player.Email = playersSet.Email;
                    player.NickName = playersSet.NickName;
                    player.BirthDate = playersSet.BirthDate;
                    player.Password = playersSet.Password;
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

        public List<PlayersSet> GetSpecifiedPlayers(string name)
        {
            List<PlayersSet> players = new List<PlayersSet>();

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                players = renovaciónLISDatabase.PlayersSet.Where(e => e.Names.Contains(name)).ToList();
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

        public long ModifyPlayer(PlayersSet modifiedPlayer)
        {
            long generatedID = 0;

            try
            {
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                PlayersSet playerToModify = renovaciónLISDatabase.PlayersSet.Find(modifiedPlayer.IDPlayer);
                if (playerToModify != null)
                {
                    playerToModify.BirthDate = modifiedPlayer.BirthDate;
                    playerToModify.Surnames = modifiedPlayer.Surnames;
                    playerToModify.Email = modifiedPlayer.Email;
                    playerToModify.Names = modifiedPlayer.Names;
                    playerToModify.NickName = modifiedPlayer.NickName;
                    renovaciónLISDatabase.SaveChanges();
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
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                PlayersSet playerToModify = renovaciónLISDatabase.PlayersSet.FirstOrDefault(e => e.Email == originalEmail);

                if (playerToModify != null)
                {
                    playerToModify.Password = newPassword;
                }

                renovaciónLISDatabase.SaveChanges();
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
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                List<String> emails = renovaciónLISDatabase.PlayersSet.Select(row => row.Email).ToList();
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
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                List<String> nicknames = renovaciónLISDatabase.PlayersSet.Select(row => row.NickName).ToList();
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
                RenovaciónLISDatabase renovaciónLISDatabase = new RenovaciónLISDatabase();
                PlayersSet playerToDelete = renovaciónLISDatabase.PlayersSet.Where(e => e.NickName.Contains(playerNickname)).FirstOrDefault();

                renovaciónLISDatabase.PlayersSet.Remove(playerToDelete);
                renovaciónLISDatabase.SaveChanges();
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
