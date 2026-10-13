import 'dart:io';

double addition(double n1, double n2){
  return n1 + n2;
}

double subtraction(double n1, double n2){
  return n1 - n2;
}

double division(double n1, double n2){
  return n1 / n2;
}

double multiplication(double n1, double n2){
  return n1 * n2;
}

double readNumber(String message){
  stdout.write(message);
  double? number = double.tryParse(stdin.readLineSync() ?? "");

  while(number == null){
    stdout.write("Invalid value. $message");
    number = double.tryParse(stdin.readLineSync() ?? "");
  }

  return number;
}

void printResult(double result){
  if(result % 1 == 0){
    print("Result: ${result.toInt()}");
  }else{
    print("Result: ${result.toStringAsFixed(2)}");
  }
}

void showMenu(){
  print("\n--- Math Functions ---");
  print("(1) Addition");
  print("(2) Subtraction");
  print("(3) Multiplication");
  print("(4) Division");
  print("(5) Exit");
  stdout.write("Please enter your choice: ");
}

void main() {

  bool running = true;
  while(running){
    showMenu();
    String option = stdin.readLineSync()?? "";

    if (option == "5"){
      print("Program is shutting down...");
      running = false;
      continue;
    }

    if(option != "1" && option != "2" && option != "3" && option != "4"){
      print("You entered invalid option. Please try again.");
      continue;
    }

    double number1 = readNumber("Number 1: ");
    double number2 = readNumber("Number 2: ");

    switch(option){
      case "1":
        printResult(addition(number1, number2));
        break;
      case "2":
        printResult(subtraction(number1, number2));
        break;
      case "3":
        printResult(multiplication(number1, number2));
        break;
      case "4":
        while(number2 == 0){
          number2 = readNumber("Number 2 can not to be 0. Please enter a new number: ");
        }
        printResult(division(number1, number2));
        break;
    }
  }
}
