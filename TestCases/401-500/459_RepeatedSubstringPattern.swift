//
//  459_RepeatedSubstringPattern.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/2/24.
//

import XCTest

final class RepeatedSubstringPattern: XCTestCase {
  func testRepeatedSubstringPattern() throws {
    let solution = Solution_459()
    XCTAssert(solution.repeatedSubstringPattern("abab"))
    XCTAssertFalse(solution.repeatedSubstringPattern("aba"))
    XCTAssert(solution.repeatedSubstringPattern("abcabcabcabc"))
    XCTAssertFalse(solution.repeatedSubstringPattern("a"))
  }
}
