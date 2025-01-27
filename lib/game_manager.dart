import 'dart:io';
import 'game_board.dart';

class GameManager {
  final GameBoard _board = GameBoard();

  String _currentPlayer = 'X'; // Keep track of current player as a string ('X' or 'O')

  void startGame() {
    print("Welcome to Tic-Tac-Toe!");

    while (true) {
      _board.displayBoard();

      // Display current player's turn
      print("It's Player $_currentPlayer's turn.");

      int move = _getMove();
      int row = (move - 1) ~/ 3; // Convert 1-9 input to 0-based row
      int col = (move - 1) % 3;  // Convert 1-9 input to 0-based column

      // Check if the move is valid
      if (_board.updateCell(row, col, _currentPlayer)) {
        // Check for a winner
        String? winner = _board.checkWinner();
        if (winner != null) {
          _board.displayBoard();
          print("🎉 Player $winner wins! 🎉");
          break;
        }

        // Check for a draw
        if (_board.isFull()) {
          _board.displayBoard();
          print("It's a draw! 🤝");
          break;
        }

        // Switch to the other player after a valid move
        _switchPlayer();
      } else {
        print("Cell already occupied. Try again.");
      }
    }

    _askRestart();
  }

  int _getMove() {
    while (true) {
      print("Player $_currentPlayer, enter your move (1-9): ");
      String? input = stdin.readLineSync();
      if (input != null && int.tryParse(input) != null) {
        int move = int.parse(input);
        if (move >= 1 && move <= 9) {
          return move;
        }
      }
      print("Invalid input. Please enter a number between 1 and 9.");
    }
  }

  void _switchPlayer() {
    // Toggle between 'X' and 'O'
    _currentPlayer = _currentPlayer == 'X' ? 'O' : 'X';
  }

  void _askRestart() {
    while (true) {
      print("Do you want to play again? (y/n): ");
      String? input = stdin.readLineSync()?.toLowerCase();
      if (input == 'y') {
        _board.resetBoard();
        _currentPlayer = 'X'; // Reset the starting player to 'X'
        startGame();
        return;
      } else if (input == 'n') {
        print("Thanks for playing! Goodbye!");
        return;
      } else {
        print("Invalid input. Please enter 'y' to play again or 'n' to exit.");
      }
    }
  }
}

