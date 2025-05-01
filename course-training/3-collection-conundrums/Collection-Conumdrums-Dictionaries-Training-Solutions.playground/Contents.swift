import Foundation

// Collection Conumdrums :: Dictionaries Training Solutions

/*
 Training 1: The Ninja Scroll Vault
 Instructions:
 You're the guardian of the Ninja Scroll Vault. Each scroll has a unique code and a corresponding secret technique. Create a dictionary called scrollVault with at least three scrolls. Access the secret technique for a specific scroll and print it out.

 Goal:
 Create a dictionary with at least three key-value pairs.
 Access and print the value for a specific key.
 */
var scrollVault = ["shadowStrike": "Invisibility", "dragonFlame": "Fire Breath", "windWalk": "Super Speed"]
if let technique = scrollVault["dragonFlame"] {
    print("The secret technique is: \(technique)")
}

/*
 Training 2: Magical Inventory Check
 Instructions:
 You're in charge of the Magical Inventory at a wizard's shop. Create a dictionary named magicInventory to store items and their quantities. Check if the inventory is empty and print an appropriate message.

 Goal:
 Create a dictionary.
 Use the isEmpty property.
 Print a message based on whether the dictionary is empty or not.
 */
var magicInventory = ["potion": 10, "wand": 3, "crystalBall": 1]
if magicInventory.isEmpty {
    print("The magical inventory is empty. Time to restock!")
} else {
    print("We have magical items in stock!")
}

/*
 Training 3: Summoning Spell Components
 Instructions:
 A powerful mage needs specific components to cast a summoning spell. Create a dictionary called spellComponents with at least three components. Add a new component to the dictionary and print the updated dictionary.

 Goal:
 Create a dictionary with at least three key-value pairs.
 Add a new key-value pair.
 Print the updated dictionary.
 */
var spellComponents = ["unicornHair": 5, "phoenixFeather": 3, "dragonScale": 2]
spellComponents["fairyDust"] = 7
print(spellComponents)

/*
 Training 4: Anime Power Levels
 Instructions:
 You're tracking the power levels of different anime characters. Create a dictionary called powerLevels with at least three characters. Update the power level of one character and print the updated dictionary.

 Goal:
 Create a dictionary with at least three key-value pairs.
 Update the value for a specific key.
 Print the updated dictionary.
 */
var powerLevels = ["Goku": 9001, "Naruto": 8000, "Luffy": 7000]
powerLevels["Naruto"] = 8500
print(powerLevels)

/*
 Bonus Training Round: Legendary Beast Codex
 Instructions:
 You're compiling a Legendary Beast Codex. Create a dictionary called beastCodex with at least five legendary beasts and their respective habitats. Iterate through the dictionary and print each beast with its habitat in a formatted string.

 Goal:
 Create a dictionary with at least five key-value pairs.
 Iterate through the dictionary.
 Print each key-value pair in a formatted string.

 */
var beastCodex = ["Phoenix": "Volcano Peaks", "Kraken": "Deep Ocean", "Griffin": "Mountain Cliffs", "Dragon": "Caves", "Unicorn": "Enchanted Forest"]
for (beast, habitat) in beastCodex {
    print("The \(beast) resides in the \(habitat).")
}
