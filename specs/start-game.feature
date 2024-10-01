# language: en

Feature: Start tic-tac-toe game

The user will initilize game and randomly decide which of the two players to start.

We define random in the context that it needs to be more that 40% likely that 
one or the other player start the game.

Scenario: Select random player to start
    Given "player1" is added to the game
    And "player2" is added to the game
    When the game is started 50 times
    Then in >40% of the starts should it be "player1" starting the game
    And in >40% of the starts should it be "player2" starting the game
