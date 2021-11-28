import 'package:flutter/widgets.dart';

void main(){
  String input = "cool";
  debugPrint("The input is $input");
  reverseAString(input);
}

reverseAString(String input){
  var answer = input.split('').reversed.join();
  debugPrint("The reverse String is $answer");  
}