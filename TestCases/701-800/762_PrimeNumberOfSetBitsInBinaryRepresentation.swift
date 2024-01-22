//
//  762_PrimeNumberOfSetBitsInBinaryRepresentation.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/22/24.
//

import XCTest

final class PrimeNumberOfSetBitsInBinaryRepresentation: XCTestCase {
  func test_countPrimeSetBits() throws {
    let solution = Solution_762()
    XCTAssertEqual(solution.countPrimeSetBits(6, 10), 4)
    XCTAssertEqual(solution.countPrimeSetBits(10, 15), 5)
    XCTAssertEqual(solution.countPrimeSetBits(1, Int(1e6)), 32_2931)
  }
}
