import 'package:flutter/widgets.dart';

void main() {
  int a = 3, b = 3;

  var answer = squareOfSum(a, b) - sumOfSquare(a, b);
  debugPrint("The difference is $answer");
}

int sumOfSquare(int a, int b) {
  int answer = (a * a) + (b * b);
  debugPrint("Sum of the Square is $answer");
  return answer;
}

int squareOfSum(int a, int b) {
  int answer = (a + b) * (a + b);
  debugPrint("Square of the Sum $answer");
  return answer;
}