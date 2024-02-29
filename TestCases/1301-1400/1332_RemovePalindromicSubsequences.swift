//
//  1332_RemovePalindromicSubsequences.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import XCTest

final class RemovePalindromicSubsequences: XCTestCase {
  func test_removePalindromeSub() throws {
    let solution = Solution_1332()
    XCTAssertEqual(solution.removePalindromeSub("ababa"), 1)
    XCTAssertEqual(solution.removePalindromeSub("abb"), 2)
    XCTAssertEqual(solution.removePalindromeSub("baabb"), 2)
  }
}
