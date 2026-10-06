import 'dart:io';

void main() {

  // Value of today
  int tdDay = 6;
  int tdMonth = 10;
  int tdYear = 2026;

  stdout.write("Enter your day of birthday (1-31): ");
  int? bdDay = int.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Enter your month of birthday (1-12): ");
  int? bdMonth = int.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Enter your year of birthday: ");
  int? bdYear = int.tryParse(stdin.readLineSync() ?? "");

  while(bdYear == null || bdYear <= 0 || bdYear > tdYear){
    stdout.write("Your entered invalid value. Please enter a new year value: ");
    bdYear = int.tryParse(stdin.readLineSync() ?? "");
  }

  while(bdMonth == null || bdMonth < 1 || bdMonth > 12 || (bdYear == tdYear && bdMonth > tdMonth)){
    stdout.write("Your entered invalid value. Please enter a new month value (1-12): ");
    bdMonth = int.tryParse(stdin.readLineSync() ?? "");
  }

  bool isLeapYearBD = (bdYear % 4 == 0 && bdYear % 100 != 0) || bdYear % 400 == 0;
  int maxDay;

  if(bdMonth == 4 || bdMonth == 6 || bdMonth == 9 || bdMonth == 11){
    maxDay = 30;
  }else if(bdMonth == 2){
    if(isLeapYearBD){
     maxDay = 29;
    }else{
      maxDay = 28;
    }
  }else{
    maxDay = 31;
  }
  if(bdYear == tdYear && bdMonth == tdMonth && maxDay > tdDay){
    maxDay = tdDay;
  }

  while(bdDay == null || bdDay < 1 || bdDay > maxDay){
    stdout.write("Your entered invalid value. Please enter a new day value (1-$maxDay): ");
    bdDay = int.tryParse(stdin.readLineSync() ?? "");
  }

  bool isBdPass = (bdMonth < tdMonth || (bdMonth == tdMonth && bdDay <= tdDay));


  if(isBdPass){
    print("Your age is: ${tdYear - bdYear}");
  }else{
    print("Your age is: ${tdYear - bdYear - 1}");
  }

  int nextBdYear;

  if(isBdPass){
    nextBdYear = tdYear + 1;
  }else{
    nextBdYear = tdYear;
  }

  bool isLeapYearNext = (nextBdYear % 4 == 0 && nextBdYear % 100 != 0) || nextBdYear % 400 == 0;
  bool isLeapYearTD = (tdYear % 4 == 0 && tdYear % 100 != 0) || tdYear % 400 == 0;

  int totalBDValue = 0;
  int totalTDValue = 0;
  int yearDayValue = 0;

  if(isLeapYearTD){
    yearDayValue = 366;
  }else{
    yearDayValue = 365;
  }

  // Birthday Day Value
  for(int i = 1; i < bdMonth; i++){
    if(i == 4 || i == 6 || i == 9 || i == 11){
      totalBDValue += 30;
    }else if (i == 2){
      if(isLeapYearNext){
        totalBDValue += 29;
      }else{
        totalBDValue += 28;
      }
    }else{
      totalBDValue += 31;
    }
  }
  totalBDValue += bdDay;

  // Today Day Value
  for(int i = 1; i < tdMonth; i++){
    if(i == 4 || i == 6 || i == 9 || i == 11){
      totalTDValue += 30;
    }else if (i == 2){
      if(isLeapYearTD){
        totalTDValue += 29;
      }else{
        totalTDValue += 28;
      }
    }else{
      totalTDValue += 31;
    }
  }
  totalTDValue += tdDay;

  if(bdMonth == tdMonth && bdDay == tdDay){
    print("Number of days left until your birthday: 0 (Happy Birthday!)");
  }else if(isBdPass){
    print("Number of days left until your birthday:${yearDayValue - totalTDValue + totalBDValue}");
  }else{
    print("Number of days left until your birtday: ${totalBDValue - totalTDValue}");
  }
}

