//
//  521_LongestUncommonSubsequenceI.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/7/24.
//

import XCTest

final class LongestUncommonSubsequenceI: XCTestCase {
  func testFindLUSLength() throws {
    let solution = Solution_521()
    XCTAssertEqual(solution.findLUSlength("aba", "cdc"), 3)
    XCTAssertEqual(solution.findLUSlength("aaa", "bbb"), 3)
    XCTAssertEqual(solution.findLUSlength("aaa", "aaa"), -1)
  }
}
