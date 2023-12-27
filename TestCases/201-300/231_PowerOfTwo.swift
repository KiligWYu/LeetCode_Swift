//
//  231_PowerOfTwo.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/8/23.
//

import XCTest

final class PowerOfTwo: XCTestCase {
  func testPowerOfTwo() throws {
    let n1 = 1,
        n2 = 16,
        n3 = 3,
        n4 = 10_7374_1824,
        n5 = -16

    let solution = Solution_231()
    XCTAssert(solution.isPowerOfTwo(n1))
    XCTAssert(solution.isPowerOfTwo(n2))
    XCTAssertFalse(solution.isPowerOfTwo(n3))
    XCTAssert(solution.isPowerOfTwo(n4))
    XCTAssertFalse(solution.isPowerOfTwo(n5))
  }
}
