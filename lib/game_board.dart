class GameBoard {
  final List<List<String>> _grid = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9']
  ];

  void displayBoard() {
    for (int i = 0; i < 3; i++) {
      print(" ${_grid[i][0]} | ${_grid[i][1]} | ${_grid[i][2]} ");
      if (i < 2) print("---+---+---");
    }
  }

  bool updateCell(int row, int col, String marker) {
    if (_grid[row][col] != 'X' && _grid[row][col] != 'O') {
      _grid[row][col] = marker;
      return true;
    }
    return false;
  }

  String? checkWinner() {
    // Check rows and columns
    for (int i = 0; i < 3; i++) {
      if (_grid[i][0] == _grid[i][1] && _grid[i][1] == _grid[i][2]) {
        return _grid[i][0];
      }
      if (_grid[0][i] == _grid[1][i] && _grid[1][i] == _grid[2][i]) {
        return _grid[0][i];
      }
    }

    // Check diagonals
    if (_grid[0][0] == _grid[1][1] && _grid[1][1] == _grid[2][2]) {
      return _grid[0][0];
    }
    if (_grid[0][2] == _grid[1][1] && _grid[1][1] == _grid[2][0]) {
      return _grid[0][2];
    }

    return null; // No winner yet
  }

  bool isFull() {
    for (var row in _grid) {
      for (var cell in row) {
        if (cell != 'X' && cell != 'O') {
          return false;
        }
      }
    }
    return true;
  }

  void resetBoard() {
    int counter = 1;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        _grid[i][j] = counter.toString();
        counter++;
      }
    }
  }
}


