import UIKit

// Foundations of Swift :: Functions Training Solutions

/*
 Training 1: No Parameters, No Problem
 Instructions:
 Create a function called greetNinja that takes no parameters. Inside the function, print out "Welcome, shadow warrior!"

 Goal:
 Define a function with no parameters.
 Print a greeting message inside the function.
 Call the function to see the message.
 */
func greetNinja() {
    print("Welcome, shadow warrior!")
}
greetNinja()

/*
 Training 2: Parameters are Magical
 Instructions:
 Create a function called summonSpell that takes a parameter spellName of type String. Inside the function, print out "Casting [spellName]!"

 Goal:
 Define a function with a parameter.
 Use the parameter within the function to print a message.
 Call the function with different spell names.
 */
func summonSpell(spellName: String) {
    print("Casting \(spellName)!")
}
summonSpell(spellName: "Fireball")

/*
 Training 3: Single Return Value
 Instructions:
 Create a function called multiplyNumbers that takes two Int parameters, a and b, and returns their product. Print the result of calling this function with the numbers 3 and 7.

 Goal:
 Define a function with two parameters.
 Return the product of the parameters.
 Print the result of the function call.
 */
func multiplyNumbers(a: Int, b: Int) -> Int {
    return a * b
}
print(multiplyNumbers(a: 3, b: 7))

/*
 Training 4: The Power of Two
 Instructions:
 Create a function called divideAndRemainder that takes two Int parameters, a and b, and returns a tuple containing their quotient and remainder. Print both values.

 Goal:
 Define a function with two parameters.
 Return a tuple containing quotient and remainder.
 Print the returned tuple values.
 */
func divideAndRemainder(a: Int, b: Int) -> (quotient: Int, remainder: Int) {
    let calculatedQuotient: Int = a / b
    let calculatedRemainder: Int = a % b
    return (quotient: calculatedQuotient, remainder: calculatedRemainder)
}
let result = divideAndRemainder(a: 10, b: 3)
print("Quotient: \(result.quotient), Remainder: \(result.remainder)")

/*
 Training 5: Default Parameters FTW
 Instructions:
 Create a function called trainNinja that takes one parameter trainingDays of type Int with a default value of 7. Inside the function, print "Ninja trained for [trainingDays] days."

 Goal:
 Define a function with a default parameter value.
 Call the function with and without passing the parameter.
 Print the result each time.
 */
func trainNinja(trainingDays: Int = 7) {
    print("Ninja trained for \(trainingDays) days.")
}
trainNinja()
trainNinja(trainingDays: 5)

/*
 Training 6: Overloaded Functions - The Overlords
 Instructions:
 Create two overloaded functions named calculatePower. One function should take an Int parameter and return its square. The other should take a Double parameter and return its square root.

 Goal:
 Define two functions with the same name but different parameters.
 Implement the correct functionality for each.
 Call both versions of the function and print their results.
 */
func calculatePower(of number: Int) -> Int {
    return number * number
}

func calculatePower(of number: Double) -> Double {
    return number.squareRoot()
}

print(calculatePower(of: 4))
print(calculatePower(of: 16.0))

/*
 Training 7: Function Inception
 Instructions:
 Create a function called outerFunction that contains another function inside it called innerFunction. innerFunction should print "Inner magic!" when called. outerFunction should call innerFunction and then print "Outer magic!"

 Goal:
 Define a nested function inside another function.
 Call the nested function within the outer function.
 Print messages from both functions.
 */
func outerFunction() {
    func innerFunction() {
        print("Inner magic!")
    }
    innerFunction()
    print("Outer magic!")
}
outerFunction()

/*
 Training 8: Ninja Duo
 Instructions:
 Create a function called ninjaDuo that takes two parameters, ninja1 and ninja2, both of type String, with default values "Naruto" and "Sasuke". The function should print "The ninja duo is [ninja1] and [ninja2]."

 Goal:
 Define a function with default parameter values.
 Call the function with and without passing parameters.
 Print the result each time.
 */
func ninjaDuo(ninja1: String = "Naruto", ninja2: String = "Sasuke") {
    print("The ninja duo is \(ninja1) and \(ninja2).")
}
ninjaDuo()
ninjaDuo(ninja1: "Kakashi", ninja2: "Obito")

/*
 Training 9: Summon Multiple Ninjas
 Instructions:
 Create a function called summonNinjas that takes variadic parameter names of type String.... The function should print "Summoning [names]!" where names are joined into a single string.

 Goal:
 Define a function with a variadic parameter.
 Join the variadic parameter into a single string.
 Print the result of the function call.
 */
func summonNinjas(names: String...) {
    let namesString = names.joined(separator: ", ")
    print("Summoning \(namesString)!")
}
summonNinjas(names: "Naruto", "Sasuke", "Sakura")

/*
 Training 10: The Ultimate Duel
 Instructions:
 Create a function called duelOutcome that takes two parameters, fighter1 and fighter2, both of type String, and returns a tuple containing the winner and the loser. Assume fighter1 always wins for simplicity.

 Goal:
 Define a function with two parameters.
 Return a tuple containing the winner and loser.
 Print the result of the function call.
 */
func duelOutcome(fighter1: String, fighter2: String) -> (winner: String, loser: String) {
    return (winner: fighter1, loser: fighter2)
}
let duel = duelOutcome(fighter1: "Naruto", fighter2: "Sasuke")
print("Winner: \(duel.winner), Loser: \(duel.loser)")

/*
 Bonus Training Round: Functionception
 Instructions:
 Create a function called performStealthAttack that takes no parameters and returns a string "Attack successful!". Then, create another function called assignMission that takes a parameter mission: () -> String (a function) and prints the result of calling this function. Use performStealthAttack as the parameter when calling assignMission. Be sure to add comments to document what each function does.

 Goal:
 Define a function that returns a string.
 Define another function that takes a function as a parameter.
 Call the second function with the first function as its argument and print the result.
 Add documentation comments for each function.
 */
/**
 A function that performs a stealth attack.

 - Returns: A string indicating the success of the attack.
 */
func performStealthAttack() -> String {
    return "Attack successful!"
}

/**
 A function that assigns a mission to a ninja.

 - Parameter mission: A function that performs a mission and returns a string result.
 */
func assignMission(mission: () -> String) {
    print(mission())
}

assignMission(mission: performStealthAttack)
