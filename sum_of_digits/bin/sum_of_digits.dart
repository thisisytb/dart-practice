import 'dart:io';
void main() {
  stdout.write("Enter the number whose digits you want to sum: ");
  int? value = int.tryParse(stdin.readLineSync() ?? "");

  while(value == null || value <= 0){
    stdout.write("You have entered an invalid value. Please enter a new value: ");
    value = int.tryParse(stdin.readLineSync() ?? "");
  }

  int total = 0;
  int dijitValue = 0;

  dijitValue = value;

  while(dijitValue > 0){
    total += dijitValue % 10;
    dijitValue = dijitValue ~/ 10;
  }

  print("The sum of the digits of $value : $total");
}
