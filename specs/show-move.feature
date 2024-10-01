Feature: Show move

Each time a player makes a move should it the UI 
be possible to follow the move.

To understand the game can one think of a matrix, consiting of 3 rows and 3 columns.

```
    | A | B | C |
| 1 |   |   |   | 
| 2 |   |   |   | 
| 3 |   |   |   | 

```

Scenario: Player puts peice
    Given its the turn of "player1"
    When "player1" makes an allowed move to "A1"
    Then is announced that "player1 placed a peice in A1"