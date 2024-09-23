//
//  main.swift
//  DPA Numbers
//
//  Created by Nikita Zhdanov on 2024-09-23.
//

import Foundation

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
    return dividend % divisor == 0 ? true : false
}

func getDivisorSum(number: Int) -> Int {
    var divisorSum = 0
    
    // Loop til half of number (divisor can't be more than half) and check if i is divisor
    for i in 1...(number/2) {
        isDivisor(dividend: number, divisor: i) ? divisorSum += i : nil
        
        print(i, isDivisor(dividend: number, divisor: i), divisorSum)
    }
    
    return divisorSum
}

// Main function to run a program
func main() -> String {
    var result = ""
    
    // Get input
    let number = getInput(minimum: 1, maximum: 32500)
    
    // Check for 1, it is a unique case
    if number == 1 {
        return "\(number) is a deficient number"
    }
    
    // Get the sum of divisors
    let divisorSum = getDivisorSum(number: number)
    
    // Compare sum of divisors to the dividend
    if divisorSum == number {
        result = "\(number) is a perfect number"
    } else if divisorSum <= number {
        result = "\(number) is a deficient number"
    } else if divisorSum >= number {
        result = "\(number) is an abundant number"
    }
    
    return result
}

// Function used to run Unit tests, since they require sending number to function. Is a copy of main
func testingMain(number: Int) -> String {
    var result = ""
    
    // Check for 1, it is a unique case
    if number == 1 {
        return "\(number) is a deficient number"
    }
    
    // Get the sum of divisors
    let divisorSum = getDivisorSum(number: number)
    
    // Compare sum of divisors to the dividend
    if divisorSum == number {
        result = "\(number) is a perfect number"
    } else if divisorSum <= number {
        result = "\(number) is a deficient number"
    } else if divisorSum >= number {
        result = "\(number) is an abundant number"
    }
    
    return result
}

while true {
    print(main())
}
