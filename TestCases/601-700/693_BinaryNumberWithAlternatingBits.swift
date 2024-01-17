//
//  693_BinaryNumberWithAlternatingBits.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/17/24.
//

import XCTest

final class BinaryNumberWithAlternatingBits: XCTestCase {
  func testHasAlternatingBits() throws {
    let solution = Solution_693()
    XCTAssertTrue(solution.hasAlternatingBits(5))
    XCTAssertFalse(solution.hasAlternatingBits(7))
    XCTAssertFalse(solution.hasAlternatingBits(11))
  }
}
