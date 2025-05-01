import Foundation
import RegexBuilder

// Collection Conumdrums :: Regex Training Solutions

/*
 Training 1: Validate a Ninja Code Name
 Instructions:
 Your mission is to create a regular expression that validates ninja code names. A valid code name must start with the prefix "Ninja", followed by a space, and then a sequence of exactly three digits. For example, "Ninja 007" is a valid code name.

 Declare a variable ninjaCodeName with the value "Ninja 123".
 Use RegexBuilder to create a regular expression that checks if the code name follows the required pattern.
 Print a message indicating whether the code name is valid or not.

 Goal:
 Declare a variable.
 Create and use a regular expression with RegexBuilder.
 Print the validation result.
 */
let ninjaCodeName = "Ninja 123"
let regex = Regex {
    "Ninja"
    One(.whitespace)
    Repeat(.digit, count: 3)
}
if ninjaCodeName.wholeMatch(of: regex) != nil {
    print("Valid code name")
} else {
    print("Invalid code name")
}

/*
 Training 2: Extract Magical Spells
 Instructions:
 Imagine you have a text filled with magical spells, each enclosed in double square brackets, like [[fireball]]. Your task is to extract all spells from a given string.

 Declare a variable magicalText with the value "Conjure [[fireball]] and [[iceblast]], but avoid the [[shadowstrike]]".
 Use RegexBuilder to create a regular expression that finds all occurrences of spells in the text.
 Print the list of extracted spells.

 Goal:
 Declare a variable.
 Create and use a regular expression with RegexBuilder.
 Print the extracted spells.
 */
let magicalText = "Conjure [[fireball]] and [[iceblast]], but avoid the [[shadowstrike]]"

// We wouldn't normally do try!; the better approach is to enclose this try inside a "do catch" but you will learn about that later
let spellRegex = try! Regex {
   "[["
   Capture {
       OneOrMore {
           CharacterClass.any
               .inverted
               .union(.whitespace)
               .union(.digit)
               .union(.word)
       }
   }
   "]]"
}

// Extract all spells from the text
let matches = magicalText.matches(of: spellRegex)

// Create an array to store the extracted spells
var extractedSpells: [String] = []

// Iterate through the matches and add the captured groups (spells) to the array
for match in matches {
   // match.1 is the captured spell
   let spell = String(match.1)
   extractedSpells.append(spell)
}

// Print the list of extracted spells
print(extractedSpells)

/*
 Training 3: Identify Anime Titles
 Instructions:
 You have a list of strings that may or may not contain anime titles. Anime titles in this list are enclosed in curly braces, such as {Naruto}. Your task is to find all anime titles and print them.

 Declare a variable animeList with the value "Watch {Naruto}, skip {Bleach}, and rewatch {One Piece}".
 Use RegexBuilder to create a regular expression that finds all anime titles in the list.
 Print the list of identified anime titles.

 Goal:
 Declare a variable.
 Create and use a regular expression with RegexBuilder.
 Print the identified anime titles.
 */
let animeList = "Watch {Naruto}, skip {Bleach}, and rewatch {One Piece}"
let animeRegex = Regex {
    "{"
    Capture {
        OneOrMore {
            CharacterClass.any
                .inverted
                .union(.whitespace)
                .union(.digit)
                .union(.word)
        }
    }
    "}"
}
let animeMatches = animeList.matches(of: animeRegex)

let titles = animeMatches.map { match in
    match.output.1
}
print(titles)

/*
 Bonus Training Round: Don't you let it repeat
 Instructions:
 You are tasked with creating a function that finds and replaces all instances of a specific repeating pattern in a string. The pattern is any word followed by a space and the same word again, such as "magic magic".

 Declare a variable text with the value "magic magic is cool but ninja ninja is cooler".
 Create a function replaceRepeatingPattern that uses RegexBuilder to find and replace all repeating patterns with just one instance of the word. For example, "magic magic" should become "magic".
 Print the modified text after calling the function.

 Goal:
 Declare a variable.
 Create and use a regular expression with RegexBuilder.
 Implement the function and print the result.
 */
// Declare the array
let text = "magic magic is cool but ninja ninja is cooler"

// Function to find and replace all repeating patterns with just one instance of the word
func replaceRepeatingPattern(in text: String) -> String {
    // Define the regular expression pattern
    let pattern = #"(\b\w+\b)\s+\1"#

    // Create the regular expression object
    let regex = try! NSRegularExpression(pattern: pattern, options: [])

    // Perform the replacement
    let range = NSRange(location: 0, length: text.utf16.count)
    let modifiedText = regex.stringByReplacingMatches(in: text, options: [], range: range, withTemplate: "$1")

    return modifiedText
}

// Replace the repeating patterns and print the modified text
let modifiedText = replaceRepeatingPattern(in: text)
print(modifiedText)
