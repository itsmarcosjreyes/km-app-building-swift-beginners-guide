import Foundation

// Closures :: Closures Training Solutions

/*
 Training 1: Basic Closure Magic
 Instructions:
 Create a closure called greetNinja that takes a String parameter and returns a String greeting. Use this closure to greet a ninja named "Naruto". Print the greeting.

 Goal:
 Define a closure.
 Pass a parameter to the closure.
 Return a value from the closure.
 Print the result.
 */
let greetNinja: (String) -> String = { name in
    return "Hello, \(name)-san!"
}

let greeting = greetNinja("Naruto")
print(greeting)

/*
 Training 2: Iterating Over Ninjas
 Instructions:
 You have an array of ninja names: ["Naruto", "Sasuke", "Sakura"]. Use the forEach method with a closure to print each name with the suffix "-san".

 Goal:
 Use a closure with the forEach method.
 Iterate over an array.
 Print each element with a modification.
 */
let ninjas: [String] = ["Naruto", "Sasuke", "Sakura"]

ninjas.forEach { name in
    print("\(name)-san")
}

/*
 Training 3: Escaping Closure Adventure
 Instructions:
 Create a function called fetchMissionDetails that takes an escaping closure as a parameter. The closure should be called with a String message after a delay of 2 seconds. Use this function to print "Mission details received!" after the delay.

 Goal:
 Define a function with an escaping closure.
 Use DispatchQueue for delay.
 Call the closure with a message.
 */
func fetchMissionDetails(completion: @escaping (String) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
        completion("Mission details received!")
    }
}

fetchMissionDetails { message in
    print(message)
}

/*
 Training 4: Non-Escaping Closure Training
 Instructions:
 Create a function called trainNinja that takes a non-escaping closure as a parameter. The closure should be called immediately with the message "Training complete!". Use this function to print the message.

 Goal:
 Define a function with a non-escaping closure.
 Call the closure immediately within the function.
 Print the result.
 */
func trainNinja(action: (String) -> Void) {
    action("Training complete!")
}

trainNinja { message in
    print(message)
}

/*
 Bonus Training Round: The Ultimate Ninja Tournament
 Instructions:
 Create an array of dictionaries, where each dictionary represents a ninja with name and rank (an integer). Use the sorted(by:) method with a closure to sort the ninjas by their rank in descending order. Print the sorted list.

 Goal:
 Create an array of dictionaries.
 Use sorted(by:) with a closure.
 Sort by a specific key in descending order.
 Print the sorted array.
 */
let ninjaArray: [[String: Any]] = [
    ["name": "Naruto", "rank": 7],
    ["name": "Sasuke", "rank": 9],
    ["name": "Sakura", "rank": 8]
]

let sortedNinjas = ninjaArray.sorted {
    guard let rank1 = $0["rank"] as? Int, let rank2 = $1["rank"] as? Int else {
        return false
    }
    return rank1 > rank2
}

for ninja in sortedNinjas {
    if let name = ninja["name"] as? String, let rank = ninja["rank"] as? Int {
        print("\(name)-san: Rank \(rank)")
    }
}
