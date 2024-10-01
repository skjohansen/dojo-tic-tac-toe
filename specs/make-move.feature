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

Scenario: No peices on the gameboard
    Given its the first turn of the first player
    And the gameboard is empty
    When the player tries to place a peice in "A1"
    Then is the move allowed

Scenario: Leagal move
    Given there is peices places in
        | Field | Peice |
        | A1    | x     |
    When the player tries to place a peice in "A2"
    Then is the move allowed

Scenario: Iligeal move
    Given there is peices places in
        | Field | Peice |
        | A1    | x     |
    When the player tries to place a peice in "A1"
    Then is the move not allowed

