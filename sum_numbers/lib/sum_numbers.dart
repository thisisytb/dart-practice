import 'dart:io';

void main (){

  print("Hello\nEnter how many numbers you want to sum: ");
  int? count = int.tryParse(stdin.readLineSync()!);

  int total = 0;
  int evenTotal = 0;
  int evenCount = 0;

  while(count == null || count <=0){
    print("Invalid input. Please enter a whole number greater than 0: ");
    count = int.tryParse(stdin.readLineSync()!);
  }

  if(count > 0){
    for(int i = 1; i <= count; i++){
      if(i % 2 == 0){
        evenCount++;
        evenTotal += i;
      }
      total += i;
    }
    print("The sum of the first $count numbers: $total.\nCount of even numbers: $evenCount.\nSum of even numbers: $evenTotal.");
  }
}