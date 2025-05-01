import Foundation

// Building Custom Types and Advanced Concepts :: Methods Training Solutions

/*
 Training 1: Ninja Tools Inventory
 Instructions:
 You're the quartermaster of a ninja clan, responsible for keeping track of the tools in each ninja's inventory. Create a Ninja struct with a property tools that is an array of strings representing the tools a ninja carries. Add an instance method addTool that adds a new tool to the ninja's inventory, and another method listTools that prints out all the tools in the inventory.

 Goal:
 Build a struct with properties.
 Create instance methods to add and list tools.
 Test by adding a few tools and listing them.
 */
struct Ninja {
    var tools: [String] = []

    mutating func addTool(_ tool: String) {
        tools.append(tool)
    }

    func listTools() {
        print("Ninja's tools: \(tools.joined(separator: ", "))")
    }
}

var ninja = Ninja()
ninja.addTool("Shuriken")
ninja.addTool("Katana")
ninja.listTools()

/*
 Training 2: Wizard's Spellbook
 Instructions:
 You're helping a wizard organize their spellbook. Create a Spell class with properties for the spell's name and difficultyLevel (an integer). Write an instance method castSpell that prints a message with the spell's name and difficulty level. Modify the method so that if the spell's difficulty level is above 7, it drains more mana and displays a warning.

 Goal:
 Build a class with properties.
 Write an instance method that includes logic based on property values.
 Test with spells of varying difficulty.
 */
class Spell {
    var name: String
    var difficultyLevel: Int

    init(name: String, difficultyLevel: Int) {
        self.name = name
        self.difficultyLevel = difficultyLevel
    }

    func castSpell() {
        if difficultyLevel > 7 {
            print("\(name) is a high-level spell! Mana drained heavily!")
        } else {
            print("Casting \(name) with difficulty level \(difficultyLevel).")
        }
    }
}

let fireball = Spell(name: "Fireball", difficultyLevel: 8)
fireball.castSpell()

/*
 Training 3: Samurai Stamina Tracker
 Instructions:
 Samurais need to stay in top shape. Create a Samurai struct with properties name and stamina. Write an instance method train that decreases stamina by 10 each time it's called, but not below 0. Also, add a method rest that restores stamina by 20. If stamina exceeds 100, it should be capped at 100.

 Goal:
 Build a struct with properties.
 Implement instance methods that modify properties.
 Ensure stamina stays within the correct bounds and test with multiple train and rest calls.
 */
struct Samurai {
    var name: String
    var stamina: Int

    mutating func train() {
        stamina = max(stamina - 10, 0)
    }

    mutating func rest() {
        stamina = min(stamina + 20, 100)
    }
}

var samurai = Samurai(name: "Miyamoto", stamina: 50)
samurai.train()
samurai.rest()
samurai.train()
samurai.train()
print("Samurai \(samurai.name)'s stamina is at: \(samurai.stamina)")

/*
 Training 4: Elemental Mastery with Type Methods
 Instructions:
 Create a Mage class with a static property totalMana representing the total mana available to all mages. Write a type method drawMana that reduces totalMana by a given amount and a method replenishMana that increases it. Each mage instance should be able to draw from and replenish this shared mana pool.

 Goal:
 Use a type property to represent shared resources.
 Create type methods to modify this shared resource.
 Test by creating multiple mage instances and drawing or replenishing mana.
 */
class Mage {
    static var totalMana = 100

    static func drawMana(_ amount: Int) {
        totalMana = max(totalMana - amount, 0)
    }

    static func replenishMana(_ amount: Int) {
        totalMana = min(totalMana + amount, 100)
    }
}

Mage.drawMana(30)
Mage.replenishMana(20)
print("Mana at: \(Mage.totalMana) after the battle")

/*
 Training 5: Anime Power-Up with Extensions
 Instructions:
 You're tasked with adding a power-up feature to a popular anime character. Start with a Warrior class that has a powerLevel property. Use an extension to add a method powerUp that doubles the warrior's power level. Also, add a method unleashUltimate that only works if powerLevel is above a certain threshold (e.g., 9000!).

 Goal:
 Start with a class and extend it.
 Add methods in the extension.
 Test the power-up and ultimate unleashing conditions.
 */
class Warrior {
    var powerLevel: Int

    init(powerLevel: Int) {
        self.powerLevel = powerLevel
    }
}

extension Warrior {
    func powerUp() {
        powerLevel *= 2
    }

    func unleashUltimate() {
        if powerLevel > 9_000 {
            print("Unleashing ultimate power!")
        } else {
            print("Power level too low!")
        }
    }
}

var warrior = Warrior(powerLevel: 4_600)
warrior.powerUp()
warrior.unleashUltimate()

/*
 Bonus Training Round: The Grandmaster's Decision
 Instructions:
 A grandmaster ninja has to decide whether to use a method or a computed property. Create a Grandmaster class with a property missionsCompleted and a method rank. The method should determine the grandmaster's rank based on the number of missions completed. Next, refactor rank to be a computed property. Think about which approach is better and why.

 Goal:
 Implement both a method and a computed property.
 Understand when to use one over the other.
 Test the implementation and reflect on the design choice.
 */
class Grandmaster {
    var missionsCompleted: Int

    init(missionsCompleted: Int) {
        self.missionsCompleted = missionsCompleted
    }

    func rank() -> String {
        switch missionsCompleted {
        case 0...10: return "Novice"
        case 11...50: return "Veteran"
        default: return "Legend"
        }
    }

    var rankComputed: String {
        switch missionsCompleted {
        case 0...10: return "Novice"
        case 11...50: return "Veteran"
        default: return "Legend"
        }
    }
}

let grandmaster = Grandmaster(missionsCompleted: 15)
print(grandmaster.rank()) // Using method
print(grandmaster.rankComputed) // Using computed property

/*
 Using a computed property aligns more with Swift’s design philosophy, given that the rank is simply derived from another property (missionsCompleted). It makes the code cleaner, more readable, and adheres to Swift's emphasis on clarity and ease of use.
 */
