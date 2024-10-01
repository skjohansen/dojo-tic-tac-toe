Feature: Show final gameboard

After game has ended should the final gameboard be shown, the gameboard should 
be reasseblemed by a matrix of 3x3. And the placement of the pieces should be visiable 
in the matrix.

To understand the game can one think of a matrix, consiting of 3 rows and 3 columns.

```
    | A | B | C |
| 1 |   |   |   | 
| 2 |   |   |   | 
| 3 |   |   |   | 

```

Scenario: The game is won after 3 moves
    Given there is peices places in
        | Field | Peice |
        | A1    | x     |
        | A2    | x     |
        | A3    | x     |
        | B1    | o     |
        | C1    | o     |
    When the game ends
    Then is the gameboard showed as folllows    
        ```
        x | o | o
        - + - + - 
        x |   |  
        - + - + - 
        x |   |   

        ```