import Foundation

// Building Custom Types and Advanced Concepts :: Properties Training Solutions

/*
 Training 1: The Ninja’s Gear Bag
 Instructions:
 You’re a ninja packing for a mission. You need to track how many shuriken (throwing stars) and smoke bombs you have in your gear bag. Create two stored properties, shurikenCount and smokeBombCount, representing the number of each item. Then, create a computed property called totalGear that calculates the total number of items in your gear bag. Print the total.

 Goal:
 Declare stored properties.
 Create a computed property to calculate the total.
 Print the total number of gear items.
 */
var shurikenCount = 5
var smokeBombCount = 3
var totalGear: Int {
    return shurikenCount + smokeBombCount
}

print("Total gear items: \(totalGear)") // Output: Total gear items: 8

/*
 Training 2: Magical Staff’s Power Level
 Instructions:
 You’re a wizard with a magical staff that grows stronger with every spell you cast. Create a stored property spellCount representing how many spells you’ve cast. Add a property observer to this property that prints a message like, “The staff glows brighter!” every time its value changes. Cast some spells (update the property value) and observe the result.

 Goal:
 Declare a stored property.
 Use a property observer to react to changes.
 Print a message when the property changes.
 */
var spellCount: Int = 0 {
    didSet {
        print("The staff glows brighter!")
    }
}

spellCount += 1
spellCount += 1

/*
 Training 3: Samurai Sword Sharpening
 Instructions:
 You’re a samurai sharpening your sword. You have a sharpness level that is crucial for battle. Create a stored property sharpness with a default value, and a computed property isSharpEnough that returns true if the sharpness is above a certain level. Print whether your sword is sharp enough for the upcoming battle.

 Goal:
 Declare a stored property with a default value.
 Create a computed property that checks a condition.
 Print the result of the condition.
 */
var sharpness: Int = 80
var isSharpEnough: Bool {
    return sharpness > 70
}

print("Is the sword sharp enough? \(isSharpEnough)")

/*
 Training 4: The Alchemist’s Ingredients
 Instructions:
 As an alchemist, you mix ingredients to create potions. Create a type property ingredientStock representing the stock of a rare herb across all alchemists. Then, create an instance property personalStock for how much of the herb you have. Adjust both properties and print the updated stocks.

 Goal:
 Declare a type property for global stock.
 Declare an instance property for personal stock.
 Adjust and print the stocks.
 */
struct Alchemist {
    static var ingredientStock: Int = 100
    var personalStock: Int = 10
}

var alchemist1 = Alchemist()
var alchemist2 = Alchemist()

Alchemist.ingredientStock -= 10
alchemist1.personalStock += 5

print("Global stock: \(Alchemist.ingredientStock)")
print("Alchemist 1 personal stock: \(alchemist1.personalStock)")

/*
 Training 5: Ninja Training Dojo
 Instructions:
 You’re running a ninja training dojo, and each student’s performance is crucial. Create a property wrapper PerformanceScore that ensures the score of each student is always between 0 and 100. Use this property wrapper on a ninjaScore property for a student and test it with some values.

 Goal:
 Create a property wrapper.
 Use the wrapper to enforce a range.
 Test the property with different values.
 */
@propertyWrapper
struct PerformanceScore {
    private var score: Int = 0
    var wrappedValue: Int {
        get { score }
        set { score = min(max(newValue, 0), 100) }
    }
}

struct NinjaStudent {
    @PerformanceScore var ninjaScore: Int
}

var student = NinjaStudent()
student.ninjaScore = 105
print("Ninja Score: \(student.ninjaScore)")

student.ninjaScore = -10
print("Ninja Score: \(student.ninjaScore)")

/*
 Training 6: The Legendary Blade
 Instructions:
 You’re forging a legendary blade that must maintain its heat for a successful forge. Create a stored property currentTemperature, and add a willSet and didSet observer that print messages before and after the temperature is adjusted. Simulate the forging process by adjusting the temperature a few times and print the messages.

 Goal:
 Declare a stored property.
 Add willSet and didSet observers.
 Print messages during the property change.
 */
var currentTemperature: Int = 100 {
    willSet {
        print("Temperature will be set to \(newValue)")
    }
    didSet {
        print("Temperature was adjusted from \(oldValue) to \(currentTemperature)")
    }
}

currentTemperature = 150
currentTemperature = 200

/*
 Bonus Training Round: The Grandmaster’s Artifact
 Instructions:
 You’ve discovered an ancient artifact with a magical property that changes based on external energy. Create a class Artifact with a stored property energyLevel. Add a computed property artifactPower that changes based on energyLevel and has both a getter and setter. The setter should also modify the energyLevel. Test the artifact by changing its power and observing how the energy level is adjusted.

 Goal:
 Create a class with stored properties.
 Add a computed property with a getter and setter.
 Ensure the setter modifies the underlying property.
 Test by adjusting the properties and observing changes.
 */
class Artifact {
    var energyLevel: Int = 50
    var artifactPower: Int {
        get {
            return energyLevel * 2
        }
        set {
            energyLevel = newValue / 2
        }
    }
}

let artifact = Artifact()
print("Initial Artifact Power: \(artifact.artifactPower)")

artifact.artifactPower = 200
print("Adjusted Energy Level: \(artifact.energyLevel)")
print("Adjusted Artifact Power: \(artifact.artifactPower)")
