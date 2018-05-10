//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
let expectedLines = 4
print("Please enter the \(expectedLines) lines of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    print(givenLine)
    
}

// OUTPUT
// Report results to the user here


