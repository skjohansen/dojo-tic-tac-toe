# Development plan

The plan of the development is as follows:
1. Create an intial .NET console application
1. Pick a first feature to implement, most likely "Add players"
1. Add an inital unittest
    * Red -> commit
    * Green -> commit
    * Refactor -> commit
1. Next unit test untill the first feature is implemented
1. Pick next feature

The following order is most likely the one by which the implemention of features i going to follow:
1. Add players
1. Start game
1. End game
1. Make move
1. Change turn
1. Validate move
1. Validate winnner
1. Show move
1. Announce Winner
1. Show final gameboard

See the [state diagram of gameplay](gameplay.md) for reasoning


Additional features I would like to make the application follow modern development:
* Dev container
* Build script
* Container with application
* CI
* CD
* Security scanning
* Code coverage
* Automates testing of features
