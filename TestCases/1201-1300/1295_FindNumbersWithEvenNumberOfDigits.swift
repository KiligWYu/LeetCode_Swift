//
//  1295_FindNumbersWithEvenNumberOfDigits.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/27/24.
//

import XCTest

final class FindNumbersWithEvenNumberOfDigits: XCTestCase {
  func test_findNumbers() throws {
    let solution = Solution_1295()
    XCTAssertEqual(solution.findNumbers([12, 345, 2, 6, 7896]), 2)
    XCTAssertEqual(solution.findNumbers([555, 901, 482, 1771]), 1)
  }
}
