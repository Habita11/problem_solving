void main() {
  List<List<int>> x = [
    [0, 0, 0, 0, 0],
    [0, 1, 0, 0, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0]
  ];
  print(beautifulMatrixSmart(x));
}

/// Beautiful matrix : http://codeforces.com/contest/263/problem/A
int counter = 0;

int beautifulMatrix(List<List<int>> x) {
  for (int i = 0; i < x.length; i++) {
    for (int j = 0; j < x[i].length; j++) {
      if (x[i][j] == 1) {
        if (j > 2) {
          x[i][j] = 0;
          x[i][j - 1] = 1;
          counter++;
        } else if (j < 2) {
          x[i][j] = 0;
          x[i][j + 1] = 1;
          counter++;
        }
        break;
      }
    }
    if (x[i].contains(1)) {
      if (i < 2) {
        x[i + 1] = x[i];
        x[i] = [0, 0, 0, 0, 0];
        counter++;
      } else if (i > 2) {
        x[i - 1] = x[i];
        x[i] = [0, 0, 0, 0, 0];
        counter++;
      }
      break;
    }
  }
  if (x[2][2] != 1) {
    beautifulMatrix(x);
  }
  return counter;
}

///Another solution:
int beautifulMatrixSmart(List<List<int>> x) {
  int result = 0;
  for (int i = 0; i < x.length; i++) {
    if (x[i].contains(1)) {
      for (int j = 0; j < x[i].length; j++) {
        if (x[i][j] == 1) {
          result = result + (i - 2).abs() + (j - 2).abs();
          break;
        }
      }
      break;
    }
  }
  return result;
}
