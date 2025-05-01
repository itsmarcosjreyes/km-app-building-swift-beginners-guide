import Foundation

// Collection Conumdrums :: Sets Training Solutions

/*
 Training 1: Ninja Squad Recruitment
 Instructions:
 Create a Set called ninjaCandidates with the names of five potential recruits: "Akira", "Yumi", "Hiro", "Sora", and "Rika". Later, a new candidate named "Kaito" wants to join the squad. Add "Kaito" to the ninjaCandidates Set. Then, one of the candidates, "Hiro", decides to withdraw. Remove "Hiro" from the Set. Finally, print the updated Set of candidates.

 Goal:
 Create a Set.
 Add a new value to the Set.
 Remove an existing value from the Set.
 Print the final Set.
 */
// Solution
var ninjaCandidates: Set<String> = ["Akira", "Yumi", "Hiro", "Sora", "Rika"]
ninjaCandidates.insert("Kaito")
ninjaCandidates.remove("Hiro")
print(ninjaCandidates)

/*
 Training 2: Magic Spellbook Collection
 Instructions:
 Imagine you are a wizard collecting rare spells. Create a Set called spellbook containing the spells "Fireball", "Heal", "Teleport", "Invisibility", and "Shield". A duplicate spell "Fireball" gets accidentally added to the collection. Add "Fireball" again and print the Set to see if it allows duplicates.

 Goal:
 Create a Set.
 Attempt to add a duplicate value.
 Print the Set to observe the behavior.
 */
// Solution
var spellbook: Set<String> = ["Fireball", "Heal", "Teleport", "Invisibility", "Shield"]
spellbook.insert("Fireball")
print(spellbook)

/*
 Training 3: Anime Merchandise Collection
 Instructions:
 You have a collection of anime merchandise stored in a Set called merchCollection. The items include "Figure", "Poster", "Keychain", "Mug", and "T-shirt". Check if you already have a "Mug" in your collection. Print the result as a boolean value.

 Goal:
 Create a Set.
 Check for the existence of a value in the Set.
 Print the result as a boolean.
 */
// Solution
let merchCollection: Set<String> = ["Figure", "Poster", "Keychain", "Mug", "T-shirt"]
let hasMug = merchCollection.contains("Mug")
print(hasMug)

/*
 Bonus Training Round: Ultimate Ninja Tournament Registration
 Instructions:
 Create two Sets: ninjaGroupA and ninjaGroupB. Group A includes "Akira", "Yumi", "Hiro", and "Sora". Group B includes "Sora", "Rika", "Kaito", and "Yumi". Determine which ninjas are registered in both groups (intersection of Sets). Also, find out which ninjas are unique to each group (symmetric difference of Sets). Print both the intersection and the symmetric difference.

 Goal:
 Create two Sets.
 Find the intersection of the two Sets.
 Find the symmetric difference of the two Sets.
 Print the results.
 */
// Solution
let ninjaGroupA: Set<String> = ["Akira", "Yumi", "Hiro", "Sora"]
let ninjaGroupB: Set<String> = ["Sora", "Rika", "Kaito", "Yumi"]

let commonNinjas = ninjaGroupA.intersection(ninjaGroupB)
let uniqueNinjas = ninjaGroupA.symmetricDifference(ninjaGroupB)

print("Common Ninjas: \(commonNinjas)")
print("Unique Ninjas: \(uniqueNinjas)")
