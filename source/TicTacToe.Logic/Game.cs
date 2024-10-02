using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicTacToe.Logic
{
    public class Game
    {
        public List<Player> Players { get; set; } = new List<Player>();
        public int? CurrentPlayerIndex { get; set; }
        public void AddPlayers()
        {
            Players.Add(new Player { Name = "player1", Marker = "x" });
            Players.Add(new Player { Name = "player2", Marker = "o" });
        }

        public void Start()
        {
            
        }
    }
}
