Tic-Tac-Toe (Human vs Human Version)
Welcome to the Tic-Tac-Toe game! This is a simple, console-based implementation of the classic Tic-Tac-Toe game in Dart. In this version, two players can play against each other, taking turns to place their markers ('X' and 'O') on the 3x3 board. It is an easy-to-use, turn-based game that focuses on basic game logic, interaction, and visual feedback through the console.

Key Features
Two-player mode: This game allows two players to take turns marking 'X' and 'O' on a 3x3 board.
Smooth board updates: After every move, the board is updated in real-time to show the latest game state.
Clear and interactive instructions: Prompts guide players through each move, ensuring an intuitive gaming experience.
Game flow control: Ensures that only valid moves are allowed, and alternates between players until a winner is found or the game ends in a draw.
Restart option: After a game ends, players are given the option to restart the game or quit.
Game Flow
1. Start the Game
When the game starts, the board will be displayed with numbers (1-9) indicating the empty cells.
Players will take turns entering a number between 1 and 9 to place their marker ('X' or 'O').
2. Players' Turns
Player X goes first.
The players alternate turns, placing their markers on the board.
The game updates the board after each move, and checks if there's a winner.
3. Winning Conditions
A player wins if they get three of their markers ('X' or 'O') in a row (horizontally, vertically, or diagonally).
If all cells are filled and no player has won, the game ends in a draw.
4. Restart or Exit
After a game ends, players can choose to play again or exit the game.
Prerequisites
To run the game, you need to have Dart SDK installed on your system.

Install Dart SDK:
Download and install Dart from the official site: Install Dart SDK
After installation, verify it with the command: dart --version.
How to Run the Game
Clone or Download the Repository:

You can clone the repository using Git or download it as a ZIP file.
Clone with Git:
https://github.com/YazanAK23/tictactoe.git
cd tic-tac-toe-dart
Run the Game: In the terminal, navigate to the project directory and run:
dart run
The game will begin, and you’ll be prompted to make moves for Player 1 (X) and Player 2 (O).




