import UIKit

// Foundations of Swift :: Conditional Statements Training Solutions

/*
 Training 1: The Ninja Code Evaluator
 Instructions:
 You are part of a secret ninja society. Two ninjas, Shinobi and Kunoichi, have different code-breaking skills represented by their skill levels (skillLevelShinobi and skillLevelKunoichi). Use if, else if, and else statements to determine who is the superior code breaker. Print out their names and a message declaring the winner.

 Goal:
 Declare variables for skill levels.
 Use if, else if, and else statements for comparison.
 Print the result.
 */
var skillLevelShinobi: Int = 85
var skillLevelKunoichi: Int = 90

if skillLevelShinobi > skillLevelKunoichi {
    print("Shinobi is the superior code breaker!")
} else if skillLevelShinobi < skillLevelKunoichi {
    print("Kunoichi is the superior code breaker!")
} else {
    print("Both ninjas have equal code-breaking skills!")
}

/*
 Training 2: Magical Creature Battle
 Instructions:
 In a world of magic, two creatures, a Dragon and a Phoenix, have different power levels. Use switch statements to determine the victor based on their power levels (low, medium, high). Print out the name of the winner and a message declaring their victory.

 Goal:
 Declare variables for power levels.
 Use a switch statement for determining the winner.
 Print the result.
 */
let dragonPower: String = "high"
let phoenixPower: String = "medium"

switch (dragonPower, phoenixPower) {
case ("high", "low"), ("high", "medium"):
    print("Dragon wins with its mighty power!")
case ("medium", "low"):
    print("Phoenix wins with its fiery strength!")
case ("low", "high"), ("medium", "high"):
    print("Phoenix wins with its high power level!")
case ("low", "medium"):
    print("Dragon wins against a lesser foe!")
default:
    print("It's a tie between the Dragon and the Phoenix!")
}

/*
 Training 3: Anime Tournament Duel
 Instructions:
 In an anime tournament, two fighters, Luffy and Naruto, have hit points (hitPointsLuffy and hitPointsNaruto). Use range operators to categorize their health status (excellent, good, poor). Print out a message for each fighter’s health status.

 Goal:
 Declare variables for hit points.
 Use range operators for health status categorization.
 Print the health status.
 */
var hitPointsLuffy: Int = 75
var hitPointsNaruto: Int = 90

switch hitPointsLuffy {
case 80...100:
    print("Luffy is in excellent health!")
case 50..<80:
    print("Luffy is in good health!")
default:
    print("Luffy is in poor health!")
}

switch hitPointsNaruto {
case 80...100:
    print("Naruto is in excellent health!")
case 50..<80:
    print("Naruto is in good health!")
default:
    print("Naruto is in poor health!")
}

/*
 Training 4: Stealth Mission Authorization
 Instructions:
 You are assigning clearance levels for a stealth mission. Use tuples to store the clearance levels of two agents (AgentBlack and AgentWhite). Compare their levels and print which agent has higher clearance or if they are equal.

 Goal:
 Declare tuples for agents' clearance levels.
 Use if, else if, and else statements for comparison.
 Print the result.
 */
let agentBlack: (name: String, clearanceLevel: Int) = (name: "Agent Black", clearanceLevel: 5)
let agentWhite: (name: String, clearanceLevel: Int) = (name: "Agent White", clearanceLevel: 7)

if agentBlack.clearanceLevel > agentWhite.clearanceLevel {
    print("\(agentBlack.name) has higher clearance.")
} else if agentBlack.clearanceLevel < agentWhite.clearanceLevel {
    print("\(agentWhite.name) has higher clearance.")
} else {
    print("Both agents have equal clearance.")
}

/*
 Training 6: Samurai Training Levels
 Instructions:
 Two samurais, SamuraiJack and SamuraiTomoe, are training. Use if, else if, and else statements along with variable scope to determine their training levels based on their points. Print a message for each samurai's training level (beginner, intermediate, expert).

 Goal:
 Declare variables for training points.
 Use if, else if, and else statements for categorizing training levels.
 Print the result.
 */
var trainingPointsJack: Int = 40
var trainingPointsTomoe: Int = 60

func determineTrainingLevel(points: Int) -> String {
    if points >= 70 {
        return "Expert"
    } else if points >= 40 {
        return "Intermediate"
    } else {
        return "Beginner"
    }
}
print("Samurai Jack is \(determineTrainingLevel(points: trainingPointsJack)).")
print("Samurai Tomoe is \(determineTrainingLevel(points: trainingPointsTomoe)).")

/*
 Bonus Training Round: The Ultimate Quest Decision Maker
 Instructions:
 You are on an epic quest with three companions: a Warrior, a Mage, and a Rogue. Use a combination of if statements, switch statements, and tuples to determine which companion takes the lead based on their individual strengths. The strengths are represented as tuples with categories (strength, intelligence, agility). Print out the name of the leading companion and the reason for their leadership.

 Goal:
 Declare tuples for each companion's strengths.
 Use if statements, switch statements, and tuples for decision-making.
 Print the result.
 */
let warrior: (name: String, strength: Int, intelligence: Int, agility: Int) = (name: "Warrior", strength: 8, intelligence: 3, agility: 5)
let mage: (name: String, strength: Int, intelligence: Int, agility: Int) = (name: "Mage", strength: 3, intelligence: 9, agility: 4)
let rogue: (name: String, strength: Int, intelligence: Int, agility: Int) = (name: "Rogue", strength: 5, intelligence: 4, agility: 7)

let leader: (name: String, reason: String)

if warrior.strength > mage.strength && warrior.strength > rogue.strength {
    leader = (warrior.name, "strength")
} else if mage.intelligence > warrior.intelligence && mage.intelligence > rogue.intelligence {
    leader = (mage.name, "intelligence")
} else if rogue.agility > warrior.agility && rogue.agility > mage.agility {
    leader = (rogue.name, "agility")
} else {
    leader = ("No clear leader", "all strengths are balanced")
}
print("\(leader.name) leads the quest due to their superior \(leader.reason).")
