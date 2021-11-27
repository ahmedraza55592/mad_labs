void main() {
  int a = 3, b = 3;

  var answer = squareOfSum(a, b) - sumOfSquare(a, b);
  print("The difference is $answer");
}

int sumOfSquare(int a, int b) {
  int answer = (a * a) + (b * b);
  print("Sum of the Square is $answer");
  return answer;
}

int squareOfSum(int a, int b) {
  int answer = (a + b) * (a + b);
  print("Square of the Sum $answer");
  return answer;
}