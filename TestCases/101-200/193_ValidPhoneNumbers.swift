//
//  193_ValidPhoneNumbers.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/28/23.
//

import XCTest

final class HappyNumber: XCTestCase {
  func testHappyNumber() throws {
    let n1 = 19, n2 = 2

    let solution = Solution_202()
    XCTAssert(solution.isHappy(n1))
    XCTAssertFalse(solution.isHappy(n2))
  }
}
