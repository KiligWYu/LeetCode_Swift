//
//  1071_GreatestCommonDivisorOfStrings.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/21/24.
//

import XCTest

final class GreatestCommonDivisorOfStrings: XCTestCase {
  func test_gcdOfStrings() throws {
    let solution = Solution_1071()
    XCTAssertEqual(solution.gcdOfStrings("ABCABC", "ABC"), "ABC")
    XCTAssertEqual(solution.gcdOfStrings("ABABAB", "ABAB"), "AB")
    XCTAssertEqual(solution.gcdOfStrings("LEET", "CODE"), "")
  }
}
