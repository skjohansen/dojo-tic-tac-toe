Feature: Validate winner

Checks the gameboard after each move to check if any of the players is a winner.

There is 8 possible winning combinations within a 3x3 gameboard.

Scenario: Less than three pieces
    Given that "player1" have 2 pieces on the gameboard
    When the gameboard is validated
    Then "player1" has not won

Scenario: Thee pieces on row
    Given that "player1" have 3 pieces on the gameboard
    And three pieces on a row
    When the gameboard is validated
    Then "player1" has won

Scenario: Three pieces not on row
    Given that "player1" have 3 pieces on the gameboard
    But not on a row
    When the gameboard is validated
    Then "player1" has not won
