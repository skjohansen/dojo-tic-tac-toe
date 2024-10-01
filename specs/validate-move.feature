Feature: Validate move

It should be possible to validate is a move is alowed.
The only iligeal move, is to place a peice on a field where another peices is already placed.

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

