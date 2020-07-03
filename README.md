# Implementing Tic Tac Toe Game with Ruby

[![View Code](https://img.shields.io/badge/View%20-Code-green)](https://github.com/acushlakoncept/tic-tac-toe)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/acushlakoncept/tic-tac-toe/issues)
[![GitHub Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/acushlakoncept/tic-tac-toe/pulls)

<a text-align="center" href="#about">About</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#method">User Interface</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ins">Input</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#with">Output</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ldl">Class Definitions</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ldl">Built With</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ldl">Live Demo</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ldl">Getting Started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#author">Authors</a>

This is project is to demonstrate our knowledge of Object Oriented Programming Language in Ruby, building a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

![screenshot](./screenshot.jpg)

# About the Game - Tic-Tac-Toe

According to [Wikipedia](https://en.wikipedia.org/wiki/Tic-tac-toe#:~:text=Tic%2Dtac%2Dtoe%20American,diagonal%20row%20is%20the%20winner.) Tic-tac-toe (American English), noughts and crosses (British English), or Xs and Os is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner...[readmore](https://en.wikipedia.org/wiki/Tic-tac-toe#:~:text=Tic%2Dtac%2Dtoe%20American,diagonal%20row%20is%20the%20winner.)

![screenshot](./tic-tac-toe.png)

# User Interface
The game starts by calling the bin/main.rb file where all other classes are called/required. The game is played on the **CLI**

# Instructions

## Input
- At the beginning of the game, the two players are requested to enter their names, one after the other.
- The first person to enter his/her name automatically becomes player 1 and is requested to enter values 
between [1 - 9] to mark a piece on the board.
- Player 1 is automatically assigned to piece "X" and player 2 piece "O"


## Output
- The board class is instantiated at the beginning of the game with unmarked spots 1 to 9 on a 3x3 grid.
- The game board is re-rendered on the screen to show player's current placement of piece. Example if 
  player 1 takes position 5, is replaced with "X" and becomes unvailable till the end of the game.
- This repeats until win or draw conditions are met
- Players instructions are error messages are displayed at each intervals to guide the players


# Class Definitions

### **Game Class**:
The game class initializes the **_board class_** and the **_player class_**. It handles the _check winner_ and _draw methods_ as well as _switch player method_.

### **Player Class**:
Will interact with Board class to select where to place pieces
Pieces placed will be represented by X or O

### **Board Class**:
Will display the game board as well as locations of marked spots
Take input from players to determine where to show marked spots


## Built With

- Ruby

## 🔴 Live Demo <a name = "ldl"></a>


[![Run on Repl.it](https://repl.it/badge/github/acushlakoncept/tic-tac-toe)](https://repl.it/@Acushla/tic-tac-toe)


# Getting Started

To get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>
```

```
$ git clone https://github.com/acushlakoncept/tic-tac-toe.git
```

**To run the code:** 

~~~bash
$ bin/main.rb
~~~


# Authors

👤 **Uduak Essien**

- Github: [@acushlakoncept](https://github.com/acushlakoncept/)
- Twitter: [@acushlakoncept](https://twitter.com/acushlakoncept)
- Linkedin: [acushlakoncept](https://www.linkedin.com/in/acushlakoncept/)

👤 **Elijah Ayandokun**

- Github: [@elijahtobs](https://github.com/elijahtobs)
- Linkedin: [Elijah Ayandokun](https://www.linkedin.com/in/ayandokunelijah/)
- Twitter: [@ElijahTobs](https://twitter.com/ElijahTobs)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project originally taken from The Odin Project
- Project inspired by [Microverse](https://www.microverse.org)
