//
//  392_IsSubsequence.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/26/23.
//

import XCTest

final class IsSubsequence: XCTestCase {
  func testIsSubsequence() throws {
    let solution = Solution_392()
    XCTAssert(solution.isSubsequence("", "ahbgdc"))
    XCTAssertFalse(solution.isSubsequence("abc", ""))
    XCTAssert(solution.isSubsequence("abc", "ahbgdc"))
    XCTAssertFalse(solution.isSubsequence("axc", "ahbgdc"))
    XCTAssert(solution.isSubsequence("abc", "aabbcc"))
    XCTAssertFalse(solution.isSubsequence("abcd", "ahbgdc"))
  }
}
