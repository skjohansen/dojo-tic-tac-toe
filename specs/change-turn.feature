Feature: Change turn

After a player has made its move putting either an x or o.

Each player have a max of 4 turns.

Scenario: First player ends turn
    Given its "player1" turn
    When "player1" have put its "x" peice
    Then should it not be possible for "player1" to add more pieces
    And the turn shiftes to "player2"

Scenario: Next player have no more turns
    Given its "player2" turn
    And "player1" have had 4 turns
    And "player2" have had 3 turns so far
    When "player2" have put its "o" peice
    Then does the game end