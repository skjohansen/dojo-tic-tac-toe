Feature: End game

The game ends when open of the two players either wins or have no more turns.

After the game has ended is it not possible for any player to put any more pieces.

Scenario: Ends because of all moves have been used
    Given both players have used all possible moves
    When the game is ended
    Then is no player able to do any more moves
    And the final gameboard is shown

Scenario: Ends because a player have won
    Given "player1" have won the game
    When the game is ended
    Then is no player able to do any more moves
    And the winner is announced
    And the final gameboard is shown
