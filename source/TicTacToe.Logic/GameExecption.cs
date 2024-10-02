using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicTacToe.Logic
{
    public class GameExecption : Exception
    {
        public GameExecption(string message) : base(message)
        {
        }
    }
}
