//
//  BinaryGap.swift
//  Codility
//
//  Created by Muhammed Karakul on 10.06.2021.
//

import Foundation

class BinaryGap {
    func solution(_ N : Int) -> Int {
        let binary = String(N, radix: 2)
        
        var binaryGaps: [Int] = Array(repeating: 0, count: binary.count)
        
        var binaryGapIndex = 0
        
        var binaryGapCounter = 0
        
        binary.forEach { character in
            if character == "1" {
                binaryGaps[binaryGapIndex] = binaryGapCounter
                binaryGapCounter = 0
                binaryGapIndex += 1
            }
            if character == "0" {
                binaryGapCounter += 1
            }
        }
        
        return binaryGaps.max() ?? .zero
    }

    func test() {
        testCase(forNumber: 1041, expectedOutput: 5)
        testCase(forNumber: 15, expectedOutput: 0)
        testCase(forNumber: 32, expectedOutput: 0)
        testCase(forNumber: 6291457, expectedOutput: 20)
    }
    
    private func testCase(forNumber input: Int, expectedOutput output: Int) {
        let result = solution(input)
        print("\(String(input, radix: 2))(\(input)): \(result) -> \(result == output ? "SUCCESS" : "FAIL")")
    }
}
