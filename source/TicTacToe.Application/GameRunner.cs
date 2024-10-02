using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicTacToe.Application
{
    public class GameRunner
    {
        IConsole _console;
        public GameRunner(IConsole console)
        {
            _console = console;
        }

        public void Welcome()
        {
            _console.WriteLine("Welcome to Tic Tac Toe!");
        }
    }
}
