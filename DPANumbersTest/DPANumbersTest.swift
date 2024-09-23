//
//  DPANumbersTest.swift
//  DPANumbersTest
//
//  Created by Nikita Zhdanov on 2024-09-23.
//

import Testing

struct DPANumbersTest {

    // Perfect number test
    @Test func test1() {
        let result = testingMain(number: 6)
        
        #expect(result == "6 is a perfect number")
    }

    // Deficient number test
    @Test func test2() {
        let result = testingMain(number: 8)
        
        #expect(result == "8 is a deficient number")
    }
    
    // Abundant number test
    @Test func test3() {
        let result = testingMain(number: 12)
        
        #expect(result == "12 is an abundant number")
    }
    
    // Number 1 case test
    @Test func test4() {
        let result = testingMain(number: 1)
        
        #expect(result == "1 is a deficient number")
    }
}
