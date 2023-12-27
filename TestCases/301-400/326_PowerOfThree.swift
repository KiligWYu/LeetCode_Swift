//
//  326_PowerOfThree.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/18/23.
//

import XCTest

final class PowerOfThree: XCTestCase {
  func testIsPowerOfThree() throws {
    let solution = Solution_326()
    XCTAssert(solution.isPowerOfThree(1))
    XCTAssert(solution.isPowerOfThree(27))
    XCTAssert(solution.isPowerOfThree(11_6226_1467))
    XCTAssertFalse(solution.isPowerOfThree(0))
    XCTAssertFalse(solution.isPowerOfThree(-1))
  }
}
