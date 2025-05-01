import UIKit

// Foundations of Swift :: Loops Training Solutions

/*
 Training 1: Ninja Training Camp
 Instructions:
 The ninja trainees must complete their daily exercises. You have three exercises in the list: push-ups, sit-ups, and squats. Use a for-in loop to iterate through this list and print out each exercise. Imagine each print statement is a gong ringing in the dojo.

 Goal:
 Create an array of exercises.
 Use a for-in loop to iterate over the array.
 Print each exercise.
 */
let exercises: [String] = ["Push-ups", "Sit-ups", "Squats"]

for exercise in exercises {
    print(exercise)
}

/*
 Training 2: Magical Spell Repetition
 Instructions:
 The wizard needs to chant a spell exactly 5 times to cast it correctly. Use a while loop to print "Abracadabra!" five times. The spell will fizzle if it’s not repeated the exact number of times, so be careful!

 Goal:
 Use a while loop.
 Print the spell 5 times.
 */
var spellCount: Int = 0

while spellCount < 5 {
    print("Abracadabra!")
    spellCount += 1
}


/*
 Training 3: Potion Brewing Continuum
 Instructions:
 The alchemist is brewing a potion that needs constant stirring. He will stir the potion until it changes color from blue to green. Use a repeat-while loop to simulate the stirring process, which should stop when the potionColor is "green". Start with potionColor as "blue" and change it to "green" after the first stir.

 Goal:
 Use a repeat-while loop.
 Change the color of the potion after the first stir.
 Print the potion color at each step.
 */
var potionColor: String = "blue"

repeat {
    print("Stirring the potion... Current color: \(potionColor)")
    potionColor = "green"
} while potionColor != "green"

print("Potion is ready! Final color: \(potionColor)")


/*
 Training 4: Break Time in the Dojo
 Instructions:
 The sensei wants the ninjas to practice their stealth movements, but they should stop immediately if they detect any noise. Use a for-in loop to iterate through a series of movements and break the loop if a movement is "noise". Print each movement until the noise is detected.

 Goal:
 Use a for-in loop.
 Use break to exit the loop on detecting "noise".
 Print each movement until the noise.
 */
let movements: [String] = ["step", "step", "noise", "step"]

for movement in movements {
    if movement == "noise" {
        print("Noise detected! Stop!")
        break
    }
    print("Ninja move: \(movement)")
}


/*
 Training 5: Continue with the Magic
 Instructions:
 The magician is performing card tricks and must skip any trick that involves the joker card. Use a for-in loop to go through a list of card tricks and continue to the next trick if the current trick is "joker". Print all tricks except "joker".

 Goal:
 Use a for-in loop.
 Use continue to skip the "joker".
 Print each trick except "joker".
 */
let cardTricks: [String] = ["ace", "king", "joker", "queen"]

for trick in cardTricks {
    if trick == "joker" {
        continue
    }
    print("Performing trick: \(trick)")
}


/*
 Bonus Training Round 6: Ninja Battle Simulation
 Instructions:
 In the final challenge, the ninjas must engage in a training battle simulation. Each ninja fights every other ninja exactly once. Use nested loops to print out every possible match-up. Use an outer while loop for the first ninja and an inner while loop for the second ninja. Ensure that a ninja doesn’t fight themselves and that each pair fights only once.

 Goal:
 Use nested while loops.
 Ensure no ninja fights themselves.
 Print each unique match-up only once.
 */
let ninjas: [String] = ["Ninja A", "Ninja B", "Ninja C", "Ninja D"]

for i in 0..<ninjas.count {
    for j in (i + 1)..<ninjas.count {
        print("\(ninjas[i]) vs \(ninjas[j])")
    }
}
