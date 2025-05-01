import UIKit

// Foundations of Swift :: Optionals Training Solutions

/*
 Training 1: The Mysterious Treasure Map
 Instructions:
 You've just found a mysterious treasure map with some hidden coordinates. These coordinates are hidden in optional variables. Your task is to reveal the coordinates using force unwrapping. Declare two optional variables xCoordinate and yCoordinate and assign them some values. Force unwrap these values to print the exact location of the treasure.

 Goal:
 Declare optional variables xCoordinate and yCoordinate.
 Use force unwrapping to access their values.
 Print the treasure location in the format "The treasure is located at (x, y)".
 */
var xCoordinate: Int? = 42
var yCoordinate: Int? = 27

let x = xCoordinate!
let y = yCoordinate!

print("The treasure is located at (\(x), \(y))")

/*
 Training 2: Ninja's Secret Message
 Instructions:
 A ninja has left you a secret message, but it's hidden in an optional variable. Use optional binding to safely unwrap the message and print it. If the message is nil, print "The ninja left no message."

 Goal:
 Declare an optional variable ninjaMessage.
 Use optional binding to unwrap and print the message.
 Print an alternative message if ninjaMessage is nil.
 */
var ninjaMessage: String? = "The enemy is near."

if let message = ninjaMessage {
    print("Secret Message: \(message)")
} else {
    print("The ninja left no message.")
}

/*
 Training 3: The Anime Artifact
 Instructions:
 In an anime-inspired world, you have found an ancient artifact. Its true power is hidden and can only be revealed using optional chaining. Declare an optional class Artifact (I know we haven’t learned about Classes just yet, to get guidance on this one, go back to the Optional Chaining section if you need to and look at the Wizard class) with a property powerLevel which is also an optional. Use optional chaining to print the artifact's power level. If the artifact or power level is nil, print "Artifact has no power."

 Goal:
 Declare a class Artifact with an optional property powerLevel.
 Create an optional variable of type Artifact.
 Use optional chaining to print the power level.
 */
class Artifact {
    var powerLevel: Int?
}

var ancientArtifact: Artifact? = Artifact()
ancientArtifact?.powerLevel = 9000

if let power = ancientArtifact?.powerLevel {
    print("Artifact Power Level: \(power)")
} else {
    print("Artifact has no power.")
}

/*
 Training 4: Magical Potion
 Instructions:
 You've discovered a magical potion recipe. The ingredients are optional, and you need to ensure the potion is always potent. Use the nil coalescing operator to assign default values to your ingredients if they are nil. Declare two optional ingredients ingredientA and ingredientB, and use the nil coalescing operator to ensure they have default values of "Unicorn Hair" and "Dragon Scale" respectively. Print the final recipe.

 Goal:
 Declare optional variables ingredientA and ingredientB.
 Use the nil coalescing operator to assign default values.
 Print the final recipe.
 */
var ingredientA: String? = nil
var ingredientB: String? = "Dragon Scale"

let finalIngredientA = ingredientA ?? "Unicorn Hair"
let finalIngredientB = ingredientB ?? "Phoenix Feather"

print("Potion Recipe: \(finalIngredientA) and \(finalIngredientB)")

/*
 Training 5: The Secret Society Clearance
 Instructions:
 You are in a secret society where member access levels are hidden in optional variables. Use optional binding to compare the access levels and print which member has higher access. Declare two optional variables member1Clearance and member2Clearance. Use optional binding to compare and print the result. If either clearance level is nil, print "Clearance information is missing."

 Goal:
 Declare optional variables member1Clearance and member2Clearance.
 Use optional binding to compare and print the result.
 Print an alternative message if either clearance level is nil.
 */
var member1Clearance: Int? = 5
var member2Clearance: Int? = 7

if let clearance1 = member1Clearance, let clearance2 = member2Clearance {
    if clearance1 > clearance2 {
        print("Member 1 has higher clearance.")
    } else if clearance1 < clearance2 {
        print("Member 2 has higher clearance.")
    } else {
        print("Both members have the same clearance.")
    }
} else {
    print("Clearance information is missing.")
}

/*
 Bonus Training Round: The Grand Magician's Spellbook
 Instructions:
 As a grand magician, you need to compile a powerful spellbook. Each spell's power is hidden in optional variables. Your task is to create a function that accepts an array of optional integers representing the power levels of the spells. Unwrap these values safely using optional binding and nil coalescing. If a spell’s power level is nil, assume it to be 0. The function should return the total power of all spells.

 Remember to document your function properly.

 Goal:
 Declare an array of optional integers spellPowers.
 Create a function calculateTotalPower to unwrap the array and calculate total power.
 Document the function.
 Print the total power.
 */
/// Calculates the total power of all spells in the spellbook.
/// - Parameter powers: An array of optional integers representing the power levels of the spells.
/// - Returns: The total power of all spells.
func calculateTotalPower(powers: [Int?]) -> Int {
    var totalPower = 0
    for power in powers {
        totalPower += power ?? 0
    }
    return totalPower
}

let spellPowers: [Int?] = [50, nil, 75, 100, nil]
let totalPower = calculateTotalPower(powers: spellPowers)
print("Total Spell Power: \(totalPower)")
