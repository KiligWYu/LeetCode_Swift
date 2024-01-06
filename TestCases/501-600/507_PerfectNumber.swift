//
//  507_PerfectNumber.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/6/24.
//

import XCTest

final class PerfectNumber: XCTestCase {
  func testCheckPerfectNumber() throws {
    let solution = Solution_507()
    XCTAssert(solution.checkPerfectNumber(1))
    XCTAssert(solution.checkPerfectNumber(28))
    XCTAssertFalse(solution.checkPerfectNumber(7))
    XCTAssertTrue(solution.checkPerfectNumber(33550336))
    XCTAssertFalse(solution.checkPerfectNumber(1_0000_0000))
  }
}
