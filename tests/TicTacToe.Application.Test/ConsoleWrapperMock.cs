using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicTacToe.Application.Test
{
    public class ConsoleWrapperMock : IConsole
    {
        public string LineToWrite { get; set; }

        public void WriteLine(string message)
        {
            LineToWrite = message;
        }
    }
}
