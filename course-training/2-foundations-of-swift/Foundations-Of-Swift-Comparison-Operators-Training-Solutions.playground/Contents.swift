import UIKit

// Foundations of Swift :: Comparison Operators Training Solutions

/*
 Training 1: The Ninja Duel
 Instructions:
 Declare two variables, narutoStrength and sasukeStrength, representing the strengths of ninjas Naruto and Sasuke. Use the comparison operator to determine who has the greater strength. Print the result, indicating the winner of the ninja duel.

 Goal:
 Declare variables.
 Use the > operator for comparison.
 Print the result.
 */
let narutoStrength: Int = 95
let sasukeStrength: Int = 80

if narutoStrength > sasukeStrength {
    print("Naruto wins!")
} else {
    print("Sasuke wins!")
}

/*
 Training 2: The Magic Number Game
 Instructions:
 Declare two variables, userGuess and magicNumber, for the user's guess and the magic number, respectively. Use the equality operator to check if the guess is correct. Print a congratulatory message if the guess is right; otherwise, prompt the user to try again.

 Goal:
 Declare variables.
 Use the == operator for equality.
 Print the result.
 */
let magicNumber: Int = 42
let userGuess: Int = 35

if userGuess == magicNumber {
    print("Congratulations, you may pass!")
} else {
    print("Sorry, wrong guess. Try again!")
}

/*
 Training 3: Anime Marathon Decision
 Instructions:
 Declare two variables, onePieceEpisodes and narutoEpisodes, representing the number of episodes in "One Piece" and "Naruto." Use the comparison operator to determine which anime has more episodes. Print the result, guiding the user's anime marathon decision.

 Goal:
 Declare variables.
 Use the > operator for comparison.
 Print the result.
 */
let onePieceEpisodes: Int = 1_000
let narutoEpisodes: Int = 500

if onePieceEpisodes > narutoEpisodes {
    print("Get ready for a long journey with Luffy!")
} else {
    print("Naruto's ninja way it is!")
}

/*
 Training 4: Speedy Race Comparison
 Instructions:
 Declare two variables, gokuSpeed and speedySpeed, representing the speeds of anime characters Goku and Speedy Gonzales. Use the comparison operator to decide who takes the lead in a race. Print the result accordingly.

 Goal:
 Declare variables.
 Use the > operator for comparison.
 Print the result.
 */
let gokuSpeed: Int = 9_000
let speedySpeed: Int = 50

if gokuSpeed > speedySpeed {
    print("Goku zooms ahead!")
} else {
    print("Speedy Gonzales takes the lead!")
}

/*
 Training 5: The Secret Society
 Instructions:
 Declare two variables, member1Clearance and member2Clearance, representing the security clearance levels of two secret society members. Use the comparison operator to determine which member has superior access. Print the result, revealing the key holder.

 Goal:
 Declare variables.
 Use the > operator for comparison.
 Print the result.
 */
let member1Clearance: Int = 8
let member2Clearance: Int = 10

if member1Clearance > member2Clearance {
    print("Member 1 has superior access!")
} else {
    print("Member 2 holds the keys to the kingdom!")
}

/*
 Bonus Training Round: The Legendary Battle
 Instructions:
 Declare variables for the strengths (dragonStrength and phoenixStrength) and ages (dragonAge and phoenixAge) of a dragon and a phoenix. Use multiple comparison operators to determine the outcome of their legendary battle. Print the result, declaring the victor.

 Hint:
 Get creative combining Comparison Operators using parenthesis. You are about to see some examples about that very soon, but let’s give it a shot!

 Goal:
 Declare variables.
 Use multiple comparison operators.
 Print the result.
 */
let dragonStrength: Int = 120
let phoenixStrength: Int = 100
let dragonAge: Int = 500
let phoenixAge: Int = 200

if dragonStrength > phoenixStrength && dragonAge > phoenixAge {
    print("The dragon reigns supreme!")
} else {
    print("The phoenix soars high above!")
}
