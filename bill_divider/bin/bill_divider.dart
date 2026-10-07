import 'dart:io';

void main() {
  stdout.write("How many guests: ");
  int? guestValue = int.tryParse(stdin.readLineSync() ?? "");

  while(guestValue == null || guestValue < 1){
    stdout.write("You entered invalid value. Please enter a new value: ");
    guestValue = int.tryParse(stdin.readLineSync() ?? "");
  }

  stdout.write("\nEnter the total bill amount: ");
  double? amountValue = double.tryParse(stdin.readLineSync() ?? "");

  while(amountValue == null || amountValue <= 0){
    stdout.write("You entered invalid value. Please enter a new value: ");
    amountValue = double.tryParse(stdin.readLineSync() ?? "");
  }

  stdout.write("Enter the tip rate (%): ");
  double? tipRate = double.tryParse(stdin.readLineSync() ?? "");

  while(tipRate == null || tipRate < 0){
    stdout.write("You entered invalid value. Please enter a new value: ");
    tipRate = double.tryParse(stdin.readLineSync() ?? "");
  }

  double tipValue = amountValue * (tipRate / 100);
  double totalValue = amountValue + tipValue;
  double personAmountValue = totalValue / guestValue;

  print("\nNumber of people: $guestValue.\n"
      "Total amount: ${totalValue.toStringAsFixed(2)}\n"
      "Tip amount: ${tipValue.toStringAsFixed(2)}\n"
      "Amount to be paid per person: ${personAmountValue.toStringAsFixed(2)}");
}
