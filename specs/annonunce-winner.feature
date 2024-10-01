Feature: Annonuce winner

The game goes on untill one of the players have filled the criterias for winning the game, 
this will end the game, and the winner should be annonunced to the user.

Scenario: Player1 have won the game
    Given that "player1" having "x"
    And have three "x" on a row
    When the game ends
    Then should it be annonunced that "player1" won


Scenario: Player2 have won the game
    Given that "player2" having "o"
    And have three "y" on a row
    When the game ends
    Then should it be annonunced that "player2" won