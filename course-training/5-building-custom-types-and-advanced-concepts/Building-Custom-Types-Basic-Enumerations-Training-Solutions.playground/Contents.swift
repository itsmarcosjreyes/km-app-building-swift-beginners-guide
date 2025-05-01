import Foundation

// Building Custom Types and Advanced Concepts :: Basic Enumerations Training Solutions

/*
 Training 1: Up The Ranks
 Instructions:
 Imagine you are part of a secret ninja clan. Each ninja has a specific rank: Genin, Chunin, Jonin. Create an enum called NinjaRank that has these three cases. Declare a variable called currentRank and set it to .Genin. Write a function called promote that takes a NinjaRank and returns the next rank in the hierarchy. Print the new rank after promotion.

 Goal:
 Declare an enum.
 Create a variable.
 Write a function.
 Print the result.
 */
enum NinjaRank {
    case Genin, Chunin, Jonin
}

var currentRank = NinjaRank.Genin

func promote(rank: NinjaRank) -> NinjaRank {
    switch rank {
    case .Genin:
        return .Chunin

    case .Chunin:
        return .Jonin

    case .Jonin:
        return .Jonin
    }
}

let newRank = promote(rank: currentRank)
print("Promoted to \(newRank)")

/*
 Training 2: Spellbook Secrets
 Instructions:
 You're developing a magical spellbook app. Each spell has a difficulty level from 1 to 5. Create an enum called SpellDifficulty with raw values representing these levels. Declare a variable currentSpellLevel set to 3 and print the corresponding case of the enum.

 Goal:
 Declare an enum with raw values.
 Create a variable.
 Print the corresponding enum case.
 */
enum SpellDifficulty: Int {
    case one = 1, two, three, four, five
}

let currentSpellLevel = 3
if let spell = SpellDifficulty(rawValue: currentSpellLevel) {
    print("The spell difficulty level is \(spell)")
} else {
    print("Invalid spell level")
}

/*
 Training 3: Secret Weapon
 Instructions:
 Imagine you are coding for a fantasy RPG game. You need to create an enum called Weapon with cases for different weapons: sword, bow, and staff. Each weapon has a string raw value. Use an optional initializer to create a weapon from a raw value string. Declare a variable mysteryWeapon and attempt to initialize it with the string "bow". Print the result, handling the optional.

 Goal:
 Declare an enum with string raw values.
 Use an optional initializer.
 Handle optionals.
 Print the result.
 */
enum Weapon: String {
    case sword, bow, staff
}

let mysteryWeapon = Weapon(rawValue: "bow")

if let weapon = mysteryWeapon {
    print("The mystery weapon is \(weapon)")
} else {
    print("Weapon not found")
}

/*
 Training 4: Not So Spacey
 Instructions:
 You're working on a space exploration game. Create an enum called SpaceMission with cases explore that has a planet name associated value and colonize that has a tuple with a planet name and the number of settlers. Declare a variable mission and set it to colonize("Mars", 100). Write a function called missionDetails that prints a message based on the mission case and its associated values.

 Goal:
 Declare an enum with associated values.
 Create a variable.
 Write a function.
 Print the result based on enum cases.
 */
enum SpaceMission {
    case explore(planet: String)
    case colonize(planet: String, settlers: Int)
}

let mission: SpaceMission = SpaceMission.colonize(planet: "Mars", settlers: 100)

func missionDetails(mission: SpaceMission) {
    switch mission {
    case .explore(let planet):
        print("Exploring planet \(planet)")

    case .colonize(let planet, let settlers):
        print("Colonizing planet \(planet) with \(settlers) settlers")
    }
}

missionDetails(mission: mission)

/*
 Bonus Training Round: Superhero Headquarters
 Instructions:
 You're managing a superhero headquarters. Each superhero has a specific role: Leader, Strategist, and Fighter. Create an enum called SuperheroRole that conforms to CaseIterable and has these three cases. Write a function called listAllRoles that prints out all the roles using the .allCases property.

 Goal:
 Declare an enum conforming to CaseIterable.
 Write a function to iterate through all cases.
 Print the result.
 */
enum SuperheroRole: CaseIterable {
    case leader
    case strategist
    case fighter
}

func listAllRoles() {
    for role in SuperheroRole.allCases {
        print(role)
    }
}

listAllRoles()


