using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicTacToe.Application.Test;

public class GameRunnerTests
{
    [Fact]
    public void Welcome_WelcomeMessageIsPresented()
    {
        // Arrange
        IConsole consoleMock = new ConsoleWrapperMock();
        var sut = new GameRunner(consoleMock);
        // Act
        sut.Welcome();
        // Assert
        Assert.Equal("Welcome to Tic Tac Toe!", ((ConsoleWrapperMock)consoleMock).LineToWrite);
    }
}
