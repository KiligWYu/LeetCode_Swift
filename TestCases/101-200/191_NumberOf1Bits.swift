//
//  191_NumberOf1Bits.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/27/23.
//

import XCTest

final class NumberOf1Bits: XCTestCase {
  func testHammingWeight() throws {
    let n1 = 11 // 00000000000000000000000000001011
    let n2 = 128 // 00000000000000000000000010000000
    let n3 = 4294967293 // 11111111111111111111111111111101

    let solution = Solution_191()
    XCTAssertEqual(solution.hammingWeight(n1), 3)
    XCTAssertEqual(solution.hammingWeight(n2), 1)
    XCTAssertEqual(solution.hammingWeight(n3), 31)
  }
}
