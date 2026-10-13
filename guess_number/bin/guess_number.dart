import 'dart:io';

void main() {

  stdout.write("Please enter your number value (0-100): ");
  int? number = int.tryParse(stdin.readLineSync() ?? "");

  while(number == null || number < 0){
    stdout.write("You entered invalid value. Please enter a new number (0 - 100): ");
    number = int.tryParse(stdin.readLineSync() ?? "");
  }

  int lowLimit = 0;
  int topLimit = 100;
  late int guess = -1;
  String? answer = "";

  while(answer != "c" && answer != "C"){
    guess = (lowLimit + topLimit) ~/ 2;

    stdout.write("My guess is: $guess. Big or small? (Big: B/b) - (Small: S/s) - (Correct: C/c): ");
    answer = stdin.readLineSync()?? "";

    if(answer == "b" || answer == "B"){
      lowLimit = guess + 1;
    }else if (answer == "s" || answer == "S"){
      topLimit = guess - 1;
    }else if (answer == "c" || answer == "C"){
      print("Your number is: $guess");
      break;
    }else{
      print("You entered invalid value.");
      continue;
    }

    if(lowLimit > topLimit){
      print("Wait a minute! You gave me contradictory answers. Game over!");
      break;
    }
  }
}
