using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;
using ServiceContracts;

namespace Services.Services
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class ServicePlayer : IPlayer
    {
        int IPlayer.AddPlayer(Players playersTable)
        {
            int generatedID = 0;

            try
            {
                playersTable.Name = "Pintoresco";
                DatabaseModelContainer databaseModelContainer = new DatabaseModelContainer();
                databaseModelContainer.PlayersSet.Add(playersTable);
                databaseModelContainer.SaveChanges();
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }

            return generatedID;
        }

        string[] IPlayer.GetPlayerByID(int ID)
        {
            throw new NotImplementedException();
        }

        List<Players> IPlayer.GetPlayers()
        {
            using (var context = new DatabaseModelContainer())
            {
                return context.PlayersSet.ToList();
            }
        }
    }
}
