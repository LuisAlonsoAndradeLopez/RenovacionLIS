using System;

public class RenovaciónLIS
{
    static void main(string[] args)
    {
        using (var client = new IPlayer())
        {
            var players = client.GetPlayers();
            foreach (var player in players)
            {
                Console.WriteLine(player.Name);
            }
        }
    }
}
