import 'dart:io';

void main(List<String> arguments) {
  print("Unit Converter\n\n"
      "1-Temperature Conversion\n"
      "2-Length Conversion\n"
      "3-Weight Conversion\n");

  stdout.write("Please select the option you wish to convert: ");
  int? mainChoice = int.tryParse(stdin.readLineSync() ?? "");

  while(mainChoice == null || mainChoice < 1 || mainChoice > 3){
    stdout.write("You entered invalid value. Please enter a new value: ");
    mainChoice = int.tryParse(stdin.readLineSync() ?? "");
  }

  double? value;
  double result;

  switch(mainChoice){
    case 1:{
      print("\nTemperature Converter\n");
      print("(1) ℃ to ℉");
      print("(2) ℉ to ℃");

      stdout.write("\nEnter your choice: ");
      int? tempChoice = int.tryParse(stdin.readLineSync() ?? "");

      while(tempChoice == null || (tempChoice != 1 && tempChoice != 2)){
        stdout.write("You entered invalid value. Please enter a new value: ");
        tempChoice = int.tryParse(stdin.readLineSync() ?? "");
      }

      switch(tempChoice){

        case 1:{
          print("\n℃ to ℉ Converter");

          stdout.write("Please enter your ℃ value: ");
          value = double.tryParse(stdin.readLineSync() ?? "");

          while(value == null){
            stdout.write("You entered invalid value. Please enter a new value: ");
            value = double.tryParse(stdin.readLineSync() ?? "");
          }

          result = (value * 9/5) + 32;
          print("$value ℃ = ${result.toStringAsFixed(2)} ℉");
          break;
        }
        case 2:{
          print("\n℉ to ℃ Converter");

          stdout.write("Please enter your ℉ value: ");
          value = double.tryParse(stdin.readLineSync() ?? "");

          while(value == null){
            stdout.write("You entered invalid value. Please enter a new value: ");
            value = double.tryParse(stdin.readLineSync() ?? "");
          }

          result = (value - 32) * 5/9;
          print("$value ℉ = ${result.toStringAsFixed(2)} ℃");
          break;
        }
        default:{
          print("Unexpected error.");
        }
      }
      break;
    }
    case 2:{
      print("\nLength Converter\n");
      print("(1) Miles to Kilometers");
      print("(2) Kilometers to Miles");

      stdout.write("\nEnter your choice: ");
      int? lengthChoice = int.tryParse(stdin.readLineSync() ?? "");

      while(lengthChoice == null || (lengthChoice != 1 && lengthChoice != 2)){
        stdout.write("You entered invalid value. Please enter a new value: ");
        lengthChoice = int.tryParse(stdin.readLineSync() ?? "");
      }

      switch(lengthChoice){
        case 1:{
          print("\nMiles to Kilometers Converter");

          stdout.write("Please enter your miles value: ");
          value = double.tryParse(stdin.readLineSync() ?? "");

          while(value == null){
            stdout.write("You entered invalid value. Please enter a new value: ");
            value = double.tryParse(stdin.readLineSync() ?? "");
          }

          result = value * 1.609344;
          print("$value mile(s) = ${result.toStringAsFixed(2)} kilometer(s)");
          break;
        }
        case 2:{
          print("\nKilometers to Miles Converter");

          stdout.write("Please enter your kilometers value: ");
          value = double.tryParse(stdin.readLineSync() ?? "");

          while(value == null){
            stdout.write("You entered invalid value. Please enter a new value: ");
            value = double.tryParse(stdin.readLineSync() ?? "");
          }

          result = value * 0.6213711922;
          print("$value kilometer(s) = ${result.toStringAsFixed(2)} mile(s)");
          break;
        }
        default:{
          print("Unexpected error.");
          break;
        }
      }
      break;
    }
    case 3:{
      print("\nWeight Converter\n");
      print("(1) Kilogram to Pounds");
      print("(2) Pounds to Kilogram");

      stdout.write("\nEnter your choice: ");
      int? weightChoice = int.tryParse(stdin.readLineSync() ?? "");

      while(weightChoice == null || (weightChoice != 1 && weightChoice != 2)){
        stdout.write("You entered invalid value. Please enter a new value: ");
        weightChoice = int.tryParse(stdin.readLineSync() ?? "");
      }

      switch(weightChoice){
        case 1:{
          print("\nKilogram to Pound Converter");

          stdout.write("Please enter your kilogram value: ");
          value = double.tryParse(stdin.readLineSync() ?? "");

          while(value == null){
            stdout.write("You entered invalid value. Please enter a new value: ");
            value = double.tryParse(stdin.readLineSync() ?? "");
          }

          result = value * 2.2046226218;
          print("$value kilogram(s) = ${result.toStringAsFixed(2)} pound(s)");
          break;
        }
        case 2:{
          print("\nPound to Kilogram Converter");

          stdout.write("Please enter your pound value: ");
          value = double.tryParse(stdin.readLineSync() ?? "");

          while(value == null){
            stdout.write("You entered invalid value. Please enter a new value: ");
            value = double.tryParse(stdin.readLineSync() ?? "");
          }

          result = value * 0.45359247;
          print("$value kilogram(s) = ${result.toStringAsFixed(2)} pound(s)");
          break;
        }
        default:{
          print("Unexpected error.");
          break;
        }
      }
      break;
    }
    default:{
      print("Unexpected error.");
      break;
    }
  }

}
