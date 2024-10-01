Feature: Make move

The player in turn can put its peice on a free spot.

The game board have a total of 9 possible places to put peice.

The player select a random free spot to put its peice.

To understand the game can one think of a matrix, consiting of 3 rows and 3 columns.

```
    | A | B | C |
| 1 |   |   |   | 
| 2 |   |   |   | 
| 3 |   |   |   | 

```

Scenario: Make ligal move
    Given there is no piece in A1
    And its "player1" turn
    When "player1" tries to place a piece in A1
    Then the move is validated as a legal move
    And is the piece placed in A1

Scenario: Make illigal move
    Given there is a piece in A1
    And its "player1" turn
    When "player1" tries to place a piece in A1
    Then the move is validated as an illigal move
    And the player needs to try to make another move