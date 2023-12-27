//
//  263_UglyNumber.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/13/23.
//

import XCTest

final class UglyNumber: XCTestCase {
  func testUglyNumber() throws {
    let solution = Solution_263()
    XCTAssertFalse(solution.isUgly(-1))
    XCTAssertFalse(solution.isUgly(0))
    XCTAssert(solution.isUgly(1))
    XCTAssert(solution.isUgly(6))
    XCTAssert(solution.isUgly(30))
    XCTAssertFalse(solution.isUgly(14))
  }
}
