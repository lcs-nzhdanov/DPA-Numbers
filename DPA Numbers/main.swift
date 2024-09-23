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
    
    for i in 1...(number/2) {
        isDivisor(dividend: number, divisor: i) ? divisorSum += i : nil
        
        print(i, isDivisor(dividend: number, divisor: i), divisorSum)
    }
    
    return divisorSum
}

func main() -> String {
    let number = getInput(minimum: 1, maximum: 32500)
    
    let divisorSum = getDivisorSum(number: number)
    
    var result = ""
    
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
