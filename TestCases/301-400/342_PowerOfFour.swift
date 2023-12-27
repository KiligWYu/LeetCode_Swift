//
//  342_PowerOfFour.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/20/23.
//

import XCTest

final class PowerOfFour: XCTestCase {
  func testIsPowerOfFour() throws {
    let solution = Solution_342()
    XCTAssert(solution.isPowerOfFour(16))
    XCTAssert(solution.isPowerOfFour(1))
    XCTAssert(solution.isPowerOfFour(1677_7216))
    XCTAssertFalse(solution.isPowerOfFour(2))
    XCTAssertFalse(solution.isPowerOfFour(8))
    XCTAssertFalse(solution.isPowerOfFour(5))
    XCTAssertFalse(solution.isPowerOfFour(-5))
  }
}
