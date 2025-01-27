import 'dart:io';

class Player {
  final String marker;

  Player(this.marker);

  int getMove() {
    while (true) {
      print("Player $marker, enter your move (1-9): ");
      String? input = stdin.readLineSync();
      int? move = int.tryParse(input ?? '');
      if (move != null && move >= 1 && move <= 9) return move - 1;

      print("Invalid input. Please enter a number between 1 and 9.");
    }
  }
}
  