void main(){
  String input = "cool";
  print("The input is $input");
  reverseAString(input);
}

reverseAString(String input){
  var answer = input.split('').reversed.join();
  print("The reverse String is $answer");  
}