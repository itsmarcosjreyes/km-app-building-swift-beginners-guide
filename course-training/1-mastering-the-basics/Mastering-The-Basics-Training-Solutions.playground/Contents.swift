import UIKit

// Mastering the Basics Training Solutions

/*
Training 1: The Name Game
Instructions:
Declare two constants, firstName and lastName, and then combine them to form your full name. Print the result. Easy, right? Your playground should greet you like an old friend.
Hint: Remember you can “add” Strings like if they were numbers!

Goal:
Declare constants.
Use the + operator for string concatenation.
Print the result.
 */
let firstName: String = "Swift"
let lastName: String = "Ninja"
let fullName = firstName + " " + lastName
print(fullName)

/*
Training 2: The Swap-a-Roo
Instructions:
Create two variables, a and b, and swap their values. It's like a dance move for variables. Don't be shy; let them tango!

Goal:
Declare variables.
Use a temporary variable for swapping.
Ensure a now holds the original value of b and vice versa.
 */
var a: Int = 5
var b: Int = 10
let temp: Int = a
a = b
b = temp

/*
Training 3: Parenthesis Palooza
Instructions:
Write an expression that calculates the area of a rectangle. You have the length and width as constants. Embrace those parentheses like a warm hug – they’re here to help!

Goal:
Utilize parentheses in expressions.
Calculate the area of a rectangle.
 */
let length: Int = 10
let width: Int = 5
let area: Int = (length + width) * 2

/*
Training 4: The Compound Adventure
Instructions:
Declare a variable representing your current bank balance. Use the shorthand operators to simulate three different transactions: deposit, withdrawal, and an online shopping spree. Are you the next finance wizard?

Goal:
Apply shorthand operators for arithmetic operations.
Update the bank balance with various transactions.
 */
var bankBalance: Double = 1000.0
let deposit: Double = 500.0
let withdrawal: Double = 200.0
let shoppingSpree: Double = 300.0

bankBalance += deposit
bankBalance -= withdrawal
bankBalance -= shoppingSpree

/*
Training 5: The Remainder Riddle
Instructions:
Create two constants, number and divider. Calculate and print the remainder when number is divided by divider. It’s like a math puzzle, but with fewer numbers – more fun!

Goal:
Use the % operator to find the remainder.
Print the result.
 */
let number: Int = 17
let divider: Int = 5
let remainder: Int = number % divider
print(remainder)

/*
 Bonus Training Round: The Code Magician
 Instructions:
 Compose a mathematical expression using at least three different arithmetic operators. This one’s a bit tricky, so put on your wizard hat and perform some coding magic!

 Goal:
 Combine multiple arithmetic operators in a single expression.
 Achieve a result that makes you say, "Abracadabra!"
 */
let x: Int = 7
let y: Int = 3
let z: Int = 2
let result = (x * y) + (z - x)
