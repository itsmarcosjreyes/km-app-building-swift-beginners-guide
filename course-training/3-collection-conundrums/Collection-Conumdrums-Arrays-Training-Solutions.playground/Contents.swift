import Foundation

// Collection Conumdrums :: Arrays Training Solutions

/*
 Training 1: Ninja Roster
 Instructions:
 You are creating a roster for a secret ninja clan. Start by declaring an array called ninjaRoster with the names of four ninjas. Then, append two more ninja names to this array. Finally, print the updated roster.

 Goal:
 Declare an array.
 Append elements to the array.
 Print the updated array.
 */
// Solution
// Declare the array
var ninjaRoster: [String] = ["Yoshi", "Hanzo", "Kira", "Ryu"]

// Append new ninjas
ninjaRoster.append("Akira")
ninjaRoster.append("Jiro")

// Print the updated roster
print(ninjaRoster)

/*
 Training 2: Magical Ingredients
 Instructions:
 Imagine you're a wizard preparing a potion and you have an array of ingredients. Declare an array called potionIngredients with at least five ingredients. Insert a new magical ingredient at the second position in the array. Print the updated array to see the magic unfold.

 Goal:
 Declare an array.
 Insert an element into the array.
 Print the updated array.
 */
// Solution
// Declare the array
var potionIngredients: [String] = ["Dragon Scale", "Unicorn Hair", "Phoenix Feather", "Mandrake Root", "Bat Wing"]

// Insert a new ingredient
potionIngredients.insert("Fairy Dust", at: 1)

// Print the updated array
print(potionIngredients)

/*
 Training 3: Anime Favorites
 Instructions:
 You have an array of your top five favorite anime shows. Declare this array and then decide you want to remove the third anime from the list. Print the updated array to see your new top favorites.

 Goal:
 Declare an array.
 Remove an element from the array.
 Print the updated array.
 */
// Solution
// Declare the array
var animeFavorites: [String] = ["Naruto", "One Piece", "Attack on Titan", "My Hero Academia", "Dragon Ball Z"]

// Remove the third anime
animeFavorites.remove(at: 2)

// Print the updated array
print(animeFavorites)

/*
 Training 4: Element Update
 Instructions:
 You have an array of numbers representing the power levels of different magic spells. Declare this array and then update the power level of the fourth spell to a new value. Print the updated array to show the boosted spell.

 Goal:
 Declare an array.
 Update an element in the array.
 Print the updated array.
 */
// Solution
// Declare the array
var spellPowers: [Int] = [45, 60, 75, 50, 90]

// Update the power level of the fourth spell
spellPowers[3] = 85

// Print the updated array
print(spellPowers)

/*
 Training 5: Ninja Training Scores
 Instructions:
 You have an array of scores from a ninja training session. Declare this array with five scores. Use a loop to iterate through the array and print each score along with a message saying "Ninja scored: X" where X is the score.

 Goal:
 Declare an array.
 Use a loop to iterate through the array.
 Print each element with a message.
 */
// Declare the array
let trainingScores: [Int] = [78, 92, 88, 85, 95]

// Iterate through the array and print each score
for score in trainingScores {
    print("Ninja scored: \(score)")
}

/*
 Bonus Training Round: Ultimate Anime Power Rankings
 Instructions:
 You are creating an ultimate ranking of anime characters based on their power levels. Start by declaring an array of power levels with at least six values. Sort the array in descending order and then iterate through the sorted array to print each power level with a message saying "Power level: X".

 Goal:
 Declare an array.
 Sort the array in descending order.
 Use a loop to iterate through the sorted array.
 Print each element with a message.
 */
// Declare the array
var powerLevels: [Int] = [9000, 15000, 3000, 12000, 8000, 20000]

// Sort the array in descending order
powerLevels.sort(by: >)

// Iterate through the sorted array and print each power level
for level in powerLevels {
    print("Power level: \(level)")
}
