import 'dart:io';
import 'dart:math';

// Generates a random choice for the computer as a String ("1", "2", "3").
String getComputerChoice(){
  final random = Random();
  int choice = random.nextInt(3) + 1;
  return choice.toString();
}

String determineRoundWinner(String player, String computer){
  if(player == computer){
    return "tie";
  }

  // Winning conditions for the player:
  // 1 beats 3 (Rock beats Scissors)
  // 2 beats 1 (Paper beats Rock)
  // 3 beats 2 (Scissors beats Paper)
  if((player == "1" && computer == "3") ||
  player == "2" && computer == "1" ||
  player == "3" && computer == "2"){
    return "player";
  }

  return "computer";
}

// Converts choice keys into readable item names for better user experience.
String getChoiceName(String choice){
  if(choice == "1") return "Rock";
  if(choice == "2") return "Paper";
  return "Scissors";
}

void main() {

  int playerScore = 0;
  int computerScore = 0;

  print("=== ROCK - PAPER - SCISSORS ===");

  // Main game Loop: plays until one side reaches a score of 3.
  while(playerScore < 3 && computerScore <3){
    final computerSelection = getComputerChoice();

    print("\nSelect your move:");
    print("(1) Rock\n(2) Paper\n(3) Scissors");
    stdout.write("Please enter your choice: ");
    String playerSelection = stdin.readLineSync() ?? "";

    // Input validation loop
    while(playerSelection != "1" && playerSelection != "2" && playerSelection != "3"){
      stdout.write("Invalid value. Please enter 1, 2 or 3: ");
      playerSelection = stdin.readLineSync() ?? "";
    }

    // Display the round result and update the scores
    final result = determineRoundWinner(playerSelection, computerSelection);

    if(result == "tie"){
      print("Result: It's a tie!");
    }else if (result == "player"){
      playerScore++;
      print("Result: Player wins this round!");
    }else{
      print("Result: Computer wins this round!");
    }

    print("Current Scores -> Player: $playerScore | Computer: $computerScore");
    print("-" * 30);
  }

  // Final match results
  print("\n=== GAME OVER ====");
  if(playerScore > computerScore){
    print("Congratulations! You won the match by $playerScore - $computerScore!");
  }else{
    print("Computer won the match by $computerScore - $playerScore. Better luck next time!");
  }
}
