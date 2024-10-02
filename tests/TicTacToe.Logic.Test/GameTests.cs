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
        var sut = new Game();
        
        // Assert
        Assert.Equal(0, sut.Players.Count);
    }

    [Fact]
    public void AddPlayers_NoPlayers_TwoPlayersAdded()
    {
        // Arrange
        var sut = new Game();
        // Act
        sut.AddPlayers();
        // Assert
        Assert.Equal(2, sut.Players.Count);
    }

    [Fact]
    public void AddPlayers_TwoPlayers_Player1()
    {
        // Arrange
        var sut = new Game();
        // Act
        sut.AddPlayers();
        // Assert
        Assert.Equal("player1", sut.Players[0].Name);
        Assert.Equal("x", sut.Players[0].Marker);
    }

    [Fact]
    public void AddPlayers_TwoPlayers_Player2()
    {
        // Arrange
        var sut = new Game();
        // Act
        sut.AddPlayers();
        // Assert
        Assert.Equal("player2", sut.Players[1].Name);
        Assert.Equal("o", sut.Players[1].Marker);
    }
    #endregion


    [Fact]
    public void StartGame_NoPlayers_GameExeption()
    {
        // Arrange
        var sut = new Game();
        // Act + Assert
        var ex = Assert.Throws<GameExecption>(() => sut.Start());
        Assert.Equal("Unable to start game, no players added", ex.Message);
        Assert.Equal(sut.CurrentPlayerIndex, null);
    }
    
}
