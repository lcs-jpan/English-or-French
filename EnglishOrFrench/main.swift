//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here
var inputLine = 0

while 1 == 1 {
    print("How many lines?")
    guard let givenInput = readLine()else {
        continue
    }
    guard let integerInput = Int(givenInput)else{
        continue
    }
    if 0 > integerInput || integerInput > 10000 {
        continue
    }
    inputLine = integerInput
    break
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
var frenchLetters = 0
var englishLetters = 0
var expectedLines = inputLine
print("Please enter the \(expectedLines) lines of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    if givenLine.count < 1 || givenLine.count > 100 {
        continue
    }
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    for letter in givenLine {
    switch letter {
    case "S", "s":
        frenchLetters += 1
    case "T", "t":
        englishLetters += 1
    default:
        break
    }
    }
    
}

// OUTPUT
// Report results to the user here
if englishLetters > frenchLetters {
    print("This looks like English.")
}
if frenchLetters > englishLetters {
    print("This looks like French.")
}


