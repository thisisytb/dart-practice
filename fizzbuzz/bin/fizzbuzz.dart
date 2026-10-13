
import 'dart:io';

void main() {

  print("FizzBuzz Game\n");

  stdout.write("Please enter a value: ");
  int? value = int.tryParse(stdin.readLineSync()?? "");

  while(value == null || value < 1){
    stdout.write("You entered invalid value. Please enter a new value (>0): ");
    value = int.tryParse(stdin.readLineSync()?? "");
  }

  for(int i = 1; i <= value; i++){
    if(i % 3 == 0 && i % 5 == 0){
      print("FizzBuzz");
    }else if(i % 5 == 0){
      print("Buzz");
    }else if(i % 3 == 0){
      print("Fizz");
    }else{
      print(i);
    }
  }

  print("\n0-100 Prime Numbers\n");

  stdout.write("Please enter a value: ");
  int? primeValue = int.tryParse(stdin.readLineSync()?? "");

  while(primeValue == null || primeValue < 1){
    stdout.write("You entered invalid value. Please enter a new value (>0): ");
    primeValue = int.tryParse(stdin.readLineSync()?? "");
  }

  for(int i = 2; i < primeValue; i++){
    bool primeNumber = true;
    for(int j = 2; j * j <= i; j++){
      if(i % j == 0){
        primeNumber = false;
        break;
      }
    }
    if(primeNumber){
      stdout.write("$i ");
    }
  }
}
