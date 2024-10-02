using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicTacToe.Logic.Test;

public class GameTests
{
    #region AddPlayers
    [Fact]
    public void Init_NoPlayers_NoPlayers()
    {
        // Arrange
        var game = new Game();
        
        // Assert
        Assert.Equal(0, game.Players.Count);
    }

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

    [Fact]
    public void AddPlayers_TwoPlayers_Player1()
    {
        // Arrange
        var game = new Game();
        // Act
        game.AddPlayers();
        // Assert
        Assert.Equal("player1", game.Players[0].Name);
        Assert.Equal("x", game.Players[0].Marker);
    }

    [Fact]
    public void AddPlayers_TwoPlayers_Player2()
    {
        // Arrange
        var game = new Game();
        // Act
        game.AddPlayers();
        // Assert
        Assert.Equal("player2", game.Players[1].Name);
        Assert.Equal("o", game.Players[1].Marker);
    }
    #endregion


    [Fact]
    public void StartGame_NoPlayers_CurrentPlayerIndex()
    {
        // Arrange
        var game = new Game();
        // Act
        game.Start();
        // Assert
        Assert.Equal(game.CurrentPlayerIndex, null);
    }


}
