namespace TicTacToe.Application;

class Program
{
    static void Main(string[] args)
    {
        GameRunner gameRunner = new GameRunner(new ConsoleWrapper());
        gameRunner.Welcome();
    }
}
