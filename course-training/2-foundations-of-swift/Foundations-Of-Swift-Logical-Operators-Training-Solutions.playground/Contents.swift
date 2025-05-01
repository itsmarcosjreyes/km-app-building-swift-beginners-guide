import UIKit

// Foundations of Swift :: Logical Operators Training Solutions

/*
 Training 1: "The Sensei Showdown"
 Instructions:
 Declare two variables, studentIsConfused and instructorExplainsWell, representing the confusion levels of a programming student and the effectiveness of the instructor's explanations. Use the logical NOT operator to check if the student is not confused and can become the sensei. Print a message encouraging the student to take the lead.

 Goal:
 Declare variables.
 Use the logical NOT operator for comparison.
 Print a motivational message.
 */
let studentIsConfused = true
let instructorExplainsWell = true

if !studentIsConfused {
    print("Congratulations! You are now the sensei of programming.")
} else {
    print("Keep learning, young grasshopper. The path to wisdom continues.")
}

/*
 Training 2: "Ninja Chakra Fusion"
 Instructions:
 Imagine two ninja warriors, Naruto and Sasuke, on a mission. Declare their chakra levels using the variables narutoChakra and sasukeChakra. Utilize the logical AND operator to determine if both Naruto and Sasuke have enough chakra to unleash a powerful jutsu. Print the result of their collaboration.

 Goal:
 Declare variables.
 Use the logical AND operator for comparison.
 Print the result of the collaboration.
 */
let narutoChakra = 1000
let sasukeChakra = 950

if narutoChakra >= 800 && sasukeChakra >= 800 {
    print("Naruto and Sasuke have enough chakra to unleash a powerful jutsu!")
} else {
    print("The jutsu requires more chakra. Train harder, ninja warriors!")
}

/*
 Training 3: "Magical Coding Spells"
 Instructions:
 You are a magical programmer with the power of Swift spells. Declare two magical constants, spell1Works and spell2Works, representing the effectiveness of two spells. Use the logical OR operator to find out if at least one of the spells is powerful enough to defeat a dragon. Print the outcome of the magical showdown.

 Goal:
 Declare constants.
 Use the logical OR operator for comparison.
 Print the result of the magical showdown.
 */
let spell1Works = true
let spell2Works = false

if spell1Works || spell2Works {
    print("The magical showdown: At least one spell is powerful enough to defeat the dragon!")
} else {
    print("Combine more magical energy to defeat the dragon. Cast stronger spells!")
}

/*
 Training 4: "Coding Language Galaxy Clash"
 Instructions:
 In a coding academy far, far away, there are two programming languages competing for dominance. Declare the variables language1Popular and language2Popular to represent their popularity levels. Use the logical AND operator within parentheses to check if both languages are popular. Print the result and declare it a tie.

 Goal:
 Declare variables.
 Use the logical AND operator within parentheses for comparison.
 Print the result of the clash.
 */
let language1Popular = true
let language2Popular = false

if (language1Popular && language2Popular) {
    print("It's a tie! Both coding languages are popular in the coding galaxy.")
} else {
    print("One language dominates! The coding galaxy has a new ruler.")
}

/*
 Training 5: "Anime Power Level Sparring"
 Instructions:
 You've entered a virtual reality where two anime characters, Goku and Luffy, are about to engage in a friendly sparring match. Declare their enthusiasm levels with variables gokuEnthusiasm and luffyEnthusiasm. Use the logical OR operator to find out if at least one of them is highly enthusiastic. Print the result, and don't forget to notify the anime fans!

 Goal:
 Declare variables.
 Use the logical OR operator for comparison.
 Print the enthusiasm level and excite the anime fans.
 */
let gokuEnthusiasm = true
let luffyEnthusiasm = false

if gokuEnthusiasm || luffyEnthusiasm {
    print("Enthusiastic sparring match! Anime fans, rejoice!")
} else {
    print("The sparring match needs more enthusiasm. Train harder, Goku and Luffy!")
}

/*
 Bonus Training Round: "The Code Ninja Cipher"
 Instructions:
 You've stumbled upon a secret code written by a mysterious programmer ninja. Decode the logic by declaring three variables, codePart1, codePart2, and codePart3, representing different parts of the ninja's code. Combine these parts using logical operators to unveil the hidden message. Use a combination of logical AND, OR, and NOT operators. Print the decrypted message and impress the coding ninja community.

 Goal:
 Declare variables for code parts.
 Use a combination of logical AND, OR, and NOT operators.
 Print the decrypted message.
 */
let codePart1 = true
let codePart2 = false
let codePart3 = true

if (codePart1 && codePart2) || !codePart3 {
    print("The hidden message is revealed: Code Ninja!")
} else {
    print("The code remains mysterious. Keep decoding, aspiring ninja!")
}
