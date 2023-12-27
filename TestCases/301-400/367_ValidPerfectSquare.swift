//
//  367_ValidPerfectSquare.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/22/23.
//

import XCTest

final class ValidPerfectSquare: XCTestCase {
  func testIsPerfectSquare() throws {
    let solution = Solution_367()
    XCTAssert(solution.isPerfectSquare(16))
    XCTAssertFalse(solution.isPerfectSquare(14))
    XCTAssertFalse(solution.isPerfectSquare(42_9496_7295))
  }
}
