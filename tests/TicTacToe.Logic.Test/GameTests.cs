using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicTacToe.Logic.Test;

public class GameTests
{
    [Fact]
    public void AddPlayers_NoPlayers_TwoPlayersAdded()
    {
        // Arrange
        var game = new Game();
        // Act
        game.AddPlayers();
        // Assert
        Assert.Equal(2, game.Players.Count);
    }
}
