//
//  main.swift
//  DPA Numbers
//
//  Created by Nikita Zhdanov on 2024-09-23.
//

import Foundation

print("Hello, World!")


func getInput(minimum: Int?, maximum: Int?) -> Int {
    while true {
        
        // Read input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Check if number is Int
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // Compare with lowest limit
        if let minimumValue = minimum {
            guard givenInteger >= minimumValue else {
                continue
            }
        }
        
        // Compare with highest limit
        if let maximumValue = maximum {
            guard givenInteger <= maximumValue else {
                continue
            }
        }
        
        // Return input
        return givenInteger
    }
    
    
}

func isDivisor(dividend: Int, divisor: Int) -> Bool {
    return divisor % dividend == 0 ? true : false
}

func getDivisorSum(number: Int) -> Int {
    var divisorSum = 0
    
    for i in 1...(number/2) {
        isDivisor(dividend: number, divisor: i) ? divisorSum += i : nil
    }
    
    return divisorSum
}
