//
//  main.swift
//  MoreOrLess
//
//  Created by Matthieu Guillemin on 10/09/2024.
//

import Foundation

func comment(attempts: Int) -> String {
    switch attempts {
        case 1...2:
            return "Congratulations, you're very lucky!"
        case 3...5:
            return "Bravo, very good strategy, with a bit of luck..."
        case 6...10:
            return "Congratulations, good strategy :)"
        case 11...20:
            return "Good, but you can do better..."
        default:
            return "Well, at least you got it. Keep practicing!"
    }
}

func review(attempts: [Int]) -> Void {
    print(attempts.map { String($0) }.joined(separator: ", "))
}

print("Please enter your name:")
if let name = readLine() {
    print("Hi \(name)")
    
    let answer = Int.random(in: 1...100)
    var win = false
    var attempts : [Int] = []
    var lastAttempt = -1
    
    print("Guess a number between 1 and 100:")
    while !win {
        if let input = readLine(), let attempt = Int(input) {
            if (attempt == lastAttempt) {
                print("Warning: you already tried this value. Attempt not counted.")
            } else {
                attempts.append(attempt)
                if attempt < answer {
                    print("More")
                } else if attempt > answer {
                    print("Less")
                } else {
                    win = true
                    print(comment(attempts: attempts.count))
                    review(attempts: attempts)
                }
            }
            lastAttempt = attempt
        } else {
            print("Please enter a valid number.")
        }
    }
} else {
    print("Failed to read name. Exiting game.")
}
