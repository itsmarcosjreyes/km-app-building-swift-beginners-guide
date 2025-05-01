import Foundation

// Building Custom Types and Advanced Concepts :: Structs and Classes Training Solutions

/*
 Training 1: Ninja ID
 Instructions:
 You’re designing a ninja registration system. Create a Ninja struct with properties name (String) and rank (Int). Then, create a Sensei class with properties name (String) and disciples (Array of Ninja). Write a method inside the Ninja struct that allows a ninja to challenge another ninja to a duel, returning true if their rank is higher.

 Goal:
 Build a Ninja struct.
 Add a method to the struct.
 Create a Sensei class.
 Work with class and struct instances.
 */
struct Ninja {
    var name: String
    var rank: Int

    func challenge(otherNinja: Ninja) -> Bool {
        return self.rank > otherNinja.rank
    }
}

class Sensei {
    var name: String
    var disciples: [Ninja]

    init(name: String, disciples: [Ninja]) {
        self.name = name
        self.disciples = disciples
    }
}

let ninja1 = Ninja(name: "Ryu", rank: 5)
let ninja2 = Ninja(name: "Ken", rank: 4)
let sensei = Sensei(name: "Master Splinter", disciples: [ninja1, ninja2])
print(sensei.disciples)  // Prints details of Ryu and Ken
print(ninja1.challenge(otherNinja: ninja2))  // true

/*
 Training 2: Magical Inventory
 Instructions:
 You’re developing an inventory system for a wizard. Create a Potion struct with properties name (String) and potency (Int). Create a Wizard class with a property inventory (Array of Potion). Add a method to Wizard that allows the wizard to brew a new potion and add it to the inventory.

 Goal:
 Build a Potion struct.
 Add a method to the Wizard class.
 Manage an array property in the class.
 */
struct Potion {
    var name: String
    var potency: Int
}

class Wizard {
    var inventory: [Potion] = []

    func brewPotion(name: String, potency: Int) {
        let potion = Potion(name: name, potency: potency)
        inventory.append(potion)
    }
}

let wizard = Wizard()
wizard.brewPotion(name: "Healing Elixir", potency: 10)
wizard.brewPotion(name: "Mana Restore", potency: 8)
print(wizard.inventory)  // Prints details of the brewed potions

/*
 Training 3: Shuriken Forge
 Instructions:
 Create a Shuriken struct with properties weight (Double) and isPoisoned (Bool). Then create a Blacksmith class with a property weapons (Array of Shuriken). Add a method to Blacksmith that mutates a shuriken’s isPoisoned property.

 Goal:
 Build a Shuriken struct.
 Create a Blacksmith class.
 Add a mutating method to the class.
 */
struct Shuriken {
    var weight: Double
    var isPoisoned: Bool
}

class Blacksmith {
    var weapons: [Shuriken]

    init(weapons: [Shuriken]) {
        self.weapons = weapons
    }

    func poisonShuriken(at index: Int) {
        weapons[index].isPoisoned = true
    }
}

var shuriken1 = Shuriken(weight: 1.2, isPoisoned: false)
var shuriken2 = Shuriken(weight: 1.5, isPoisoned: false)
let blacksmith = Blacksmith(weapons: [shuriken1, shuriken2])
blacksmith.poisonShuriken(at: 0)
print(blacksmith.weapons)  // First shuriken should be poisoned

/*
 Training 4: Identity Crisis
 Instructions:
 Create a Ninja class with properties name (String) and rank (Int). Instantiate two Ninja objects with identical properties. Use the identity operator (===) to check if they are the same instance and print the result.

 Goal:
 Build a Ninja class.
 Use the identity operator.
 Understand reference vs. value types.
 */
class Ninja2 { // We use Ninja2 as the name so that it doesn't class with the Ninja defined in previous exercise
    var name: String
    var rank: Int

    init(name: String, rank: Int) {
        self.name = name
        self.rank = rank
    }
}

let ninjaA = Ninja2(name: "Ryu", rank: 5)
let ninjaB = Ninja2(name: "Ryu", rank: 5)
let ninjaC = ninjaA
print(ninjaA === ninjaB)  // false
print(ninjaA === ninjaC)  // true

/*
 Training 5: Potion Factory
 Instructions:
 Create a Potion struct with properties type (String) and effectDuration (Int). Then, create a PotionFactory class that can manufacture different potions by mutating properties inside the class. Ensure the potions maintain their state once created.

 Goal:
 Build a Potion struct.
 Create a PotionFactory class.
 Manage mutating properties inside the class.
 */
struct Potion2 { // We use Potion2 as the name so that it doesn't class with the Ninja defined in previous exercise
    var type: String
    var effectDuration: Int
}

class PotionFactory {
    var potionType: String
    var potionDuration: Int

    init(potionType: String, potionDuration: Int) {
        self.potionType = potionType
        self.potionDuration = potionDuration
    }

    func createPotion() -> Potion2 {
        return Potion2(type: potionType, effectDuration: potionDuration)
    }
}

let factory = PotionFactory(potionType: "Invisibility", potionDuration: 5)
let potion = factory.createPotion()
print(potion)  // Prints the details of the created potion

/*
 Training 6: Samurai Lineage
 Instructions:
 Create a Samurai class with properties name (String) and ancestor (Samurai?). The ancestor property should reference another Samurai object. Implement a method that returns the name of the eldest known ancestor in the lineage (Though we haven’t explored recursion in depth, this is a great practice for a problem you will encounter more often than not in real life 🙂).

 Goal:
 Build a Samurai class.
 Work with optional properties.
 Implement a recursive method.
 */
class Samurai {
    var name: String
    var ancestor: Samurai?

    init(name: String, ancestor: Samurai?) {
        self.name = name
        self.ancestor = ancestor
    }

    func eldestAncestor() -> String {
        return ancestor?.eldestAncestor() ?? name
    }
}

let grandAncestor = Samurai(name: "Ieyasu", ancestor: nil)
let ancestor = Samurai(name: "Nobunaga", ancestor: grandAncestor)
let samurai = Samurai(name: "Hattori", ancestor: ancestor)
print(samurai.eldestAncestor())  // "Ieyasu"

/*
 Training 7: Ninja Academy
 Instructions:
 Create a Ninja struct with properties name (String) and discipline (String). Then, create a NinjaAcademy class that manages a list of ninjas. Add a method to the class that allows sorting ninjas by their discipline.

 Goal:
 Build a Ninja struct.
 Create a NinjaAcademy class.
 Sort an array property in the class.
 */
struct Ninja3 { // We use Ninja3 as the name so that it doesn't class with the Ninjas defined in previous exercise
    var name: String
    var discipline: String
}

class NinjaAcademy {
    var ninjas: [Ninja3]

    init(ninjas: [Ninja3]) {
        self.ninjas = ninjas
    }

    func sortNinjasByDiscipline() {
        ninjas.sort { $0.discipline < $1.discipline }
    }
}

let ninjaAlpha = Ninja3(name: "Ryu", discipline: "Stealth")
let ninjaBeta = Ninja3(name: "Ken", discipline: "Swordsmanship")
let ninjaCapa = Ninja3(name: "Jin", discipline: "Ninjutsu")
let academy = NinjaAcademy(ninjas: [ninjaAlpha, ninjaBeta, ninjaCapa])
academy.sortNinjasByDiscipline()
print(academy.ninjas)  // Prints ninjas sorted by discipline

/*
 Training 8: Weapon Crafter
 Instructions:
 Create a Weapon struct with properties type (String) and damage (Int). Then, create a WeaponCrafter class that has a method for crafting a weapon and returning it. Ensure that the weapon’s state is maintained after creation.

 Goal:
 Build a Weapon struct.
 Create a WeaponCrafter class.
 Return an instance from a class method.
 */
struct Weapon {
    var type: String
    var damage: Int
}

class WeaponCrafter {
    func craftWeapon(type: String, damage: Int) -> Weapon {
        return Weapon(type: type, damage: damage)
    }
}

let crafter = WeaponCrafter()
let sword = crafter.craftWeapon(type: "Sword", damage: 15)
print(sword)  // Prints the details of the crafted weapon

/*
 Training 9: Scroll of Wisdom
 Instructions:
 Create a Scroll struct with properties content (String) and pages (Int). Then, create a Library class that stores multiple scrolls. Implement a method that adds a new scroll to the library, ensuring no duplicates based on content.

 Goal:
 Build a Scroll struct.
 Create a Library class.
 Manage unique instances in an array.
 */
struct Scroll {
    var content: String
    var pages: Int
}

class Library {
    var scrolls: [Scroll] = []

    func addScroll(scroll: Scroll) {
        if !scrolls.contains(where: { $0.content == scroll.content }) {
            scrolls.append(scroll)
        }
    }
}

let library = Library()
let scroll1 = Scroll(content: "Ancient Spells", pages: 50)
let scroll2 = Scroll(content: "Battle Strategies", pages: 30)
let scroll3 = Scroll(content: "Ancient Spells", pages: 50)  // Duplicate content
library.addScroll(scroll: scroll1)
library.addScroll(scroll: scroll2)
library.addScroll(scroll: scroll3)  // This should not be added
print(library.scrolls)  // Should contain only scroll1 and scroll2

/*
 Training 10: Swift Swordsmith
 Instructions:
 Create a Sword struct with properties material (String) and sharpness (Int). Then, create a Swordsmith class with a method that can sharpen a sword, enhancing its sharpness by a given amount.

 Goal:
 Build a Sword struct.
 Create a Swordsmith class.
 Implement a method that mutates properties inside the class.
 */
struct Sword {
    var material: String
    var sharpness: Int

    mutating func sharpen(by amount: Int) {
        self.sharpness += amount
    }
}

class Swordsmith {
    func sharpenSword(_ sword: Sword, by amount: Int) -> Sword {
        var sharpenedSword = sword
        sharpenedSword.sharpen(by: amount)
        return sharpenedSword
    }
}

let hashiraSword = Sword(material: "Steel", sharpness: 10)
let smith = Swordsmith()

let sharpenedSword = smith.sharpenSword(hashiraSword, by: 5)
print(sharpenedSword.sharpness)  // 15
print(hashiraSword.sharpness)    // 10, original sword remains unchanged

/*
 Bonus Training Round: The Eternal Champion
 Instructions:
 Create a Champion class with properties name (String), level (Int), and companion (Champion?). The companion property should reference another Champion object. Implement a method that levels up both the champion and their companion by a given amount. Ensure that a champion cannot level up more than once per call to the method.

 Goal:
 Build a Champion class.
 Work with optional properties.
 Manage object references without using recursion.
 */
class Champion {
    var name: String
    var level: Int
    var companion: Champion?

    init(name: String, level: Int, companion: Champion? = nil) {
        self.name = name
        self.level = level
        self.companion = companion
    }

    func levelUp(by amount: Int) {
        // Level up the champion
        self.level += amount

        // Level up the companion, if they exist
        if let companion = companion {
            companion.level += amount
        }
    }
}

let champ1 = Champion(name: "Arthur", level: 10)
let champ2 = Champion(name: "Lancelot", level: 8, companion: champ1)
champ2.levelUp(by: 2)
print(champ2.level)  // 10
print(champ1.level)  // 12
