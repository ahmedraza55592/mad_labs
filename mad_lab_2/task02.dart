void main(){
  int check ;
  int number =44;
  int counter = 0;

  print("Find Nth Prime Number: $number");

  for (int i = 2; i < 1000; i++){
    check =0;
    for (int j=2; j<=i/2; j++){
      if(i%j==0){
        check =1;
        break;
      }
    }
    if(check==0){
      counter++;
        if(counter == number){
          print("The $number Prime Number is: $i");
          break;
        }
    }
  }
}