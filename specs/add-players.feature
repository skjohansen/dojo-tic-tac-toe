Feature: Add players

It should be possible to add two player to the game, no more - no less.

Background:
    Given the game is initilize
    And there is no players

Example: First player
    When the first player is added to the game
    Then is it given the name "player1"
    And the piece "x"

Example: Second player
    When the second player is added to the game
    Then is it given the name "player2"
    And the piece "o"
