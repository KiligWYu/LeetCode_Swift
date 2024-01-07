//
//  520_DetectCapital.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/7/24.
//

import XCTest

final class DetectCapital: XCTestCase {
  func testDetectCapitalUse() throws {
    let solution = Solution_520()
    XCTAssert(solution.detectCapitalUse("USA"))
    XCTAssertFalse(solution.detectCapitalUse("FlaG"))
    XCTAssert(solution.detectCapitalUse("leetcode"))
    XCTAssertFalse(solution.detectCapitalUse("leetCode"))
  }
}
