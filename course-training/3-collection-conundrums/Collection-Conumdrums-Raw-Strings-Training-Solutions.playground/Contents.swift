import Foundation

// Collection Conumdrums :: Strings Training Solutions

/*
 Training 1: The Mighty Name Conqueror
 Instructions:
 Declare a variable heroName with a string value representing your favorite anime character's name. Then, create another variable villainName representing the villain’s name. Combine these two names into a single string called battleCry. Print the battleCry to showcase the ultimate showdown!

 Goal:
 Declare variables for heroName and villainName.
 Concatenate the strings into battleCry.
 Print the battleCry.
 */
var heroName = "Naruto"
var villainName = "Sasuke"
var battleCry = heroName + " vs " + villainName
print(battleCry)


/*
 Training 2: The Hidden Message
 Instructions:
 Create a variable secretMessage that contains a mysterious string. Iterate through each character in secretMessage, and print only the vowels (a, e, i, o, u) you encounter. The rest of the characters remain hidden, like a ninja in the shadows.

 Goal:
 Declare secretMessage with a string value.
 Iterate through each character.
 Print only the vowels.
 */
var secretMessage = "The hidden message is revealed"
for char in secretMessage {
    if "aeiou".contains(char) {
        print(char, terminator: "")
    }
}
print("")

/*
 Training 3: The Grapheme Cluster Enigma
 Instructions:
 Declare a variable magicWord with a string value that contains a grapheme cluster (like an emoji or a character with a diacritical mark). Determine and print the number of characters in the magicWord using Swift's count property.

 Goal:
 Declare magicWord with a grapheme cluster.
 Use count to find the number of characters.
 Print the number of characters.
 */
var magicWord = "Programación"
print("Number of characters in magicWord: \(magicWord.count)")

/*
 Training 4: The Reversal Spell
 Instructions:
 Create a variable spell containing a string value of a magical incantation. Write code to reverse the spell and print the reversed incantation to invoke the spell’s true power.

 Goal:
 Declare spell with a string value.
 Reverse the string.
 Print the reversed string.
 */
var spell = "abracadabra"
var reversedSpell = String(spell.reversed())
print(reversedSpell)

/*
 Training 5: The Raw String Cipher
 Instructions:
 Declare a variable rawQuote using Swift’s raw string syntax. This quote should contain a tricky escape sequence (like a backslash or double quotes). Print rawQuote to ensure the raw string is correctly interpreted.

 Goal:
 Declare rawQuote using raw string syntax.
 Print the raw string.
 */
let rawQuote = #"This is a raw string with a tricky escape: \n "Hello, World!""#
print(rawQuote)

/*
 Bonus Training Round: The Ultimate Cipher Decoder
 Instructions:
 You’ve stumbled upon a secret message encoded in a convoluted cipher. The encodedMessage variable contains a string where each character's Unicode value has been shifted by 1. Write a function decodeMessage that takes this string, decodes it by reversing the shift, and returns the original message. Print the decoded message to reveal the secret.

 Goal:
 Declare encodedMessage with a string value.
 Write decodeMessage function to reverse the Unicode shift.
 Print the decoded message.
 */
let encodedMessage = "ifmmp!xpsme"

func decodeMessage(_ message: String) -> String {
    var decoded = ""
    for char in message {
        if let ascii = char.asciiValue {
            decoded.append(Character(UnicodeScalar(ascii - 1)))
        }
    }
    return decoded
}

print(decodeMessage(encodedMessage))

/*
 Bonus Training Round 2: The Space Efficient Ninja
 Instructions:
 Declare a variable ninjaMessage with an empty string. Use the reserveCapacity function to preallocate enough space for a message of 50 characters. Then, append a message of your choice to ninjaMessage and print the final message. This challenge will show you how to be as efficient as a ninja with your memory allocation.

 Goal:
 Declare ninjaMessage as an empty string.
 Use reserveCapacity to preallocate space.
 Append a message to ninjaMessage.
 Print the final message.
 */
var ninjaMessage = ""
ninjaMessage.reserveCapacity(50)
ninjaMessage.append("Swift strings are super efficient with reserveCapacity!")
print(ninjaMessage)
