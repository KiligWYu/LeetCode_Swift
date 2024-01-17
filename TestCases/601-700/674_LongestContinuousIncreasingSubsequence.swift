//
//  674_LongestContinuousIncreasingSubsequence.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/17/24.
//

import XCTest

final class LongestContinuousIncreasingSubsequence: XCTestCase {
  func testFindLengthOfLCIS() throws {
    let solution = Solution_674()
    XCTAssertEqual(solution.findLengthOfLCIS([1]), 1)
    XCTAssertEqual(solution.findLengthOfLCIS([1, 3, 5, 4, 7]), 3)
    XCTAssertEqual(solution.findLengthOfLCIS([2, 2, 2, 2, 2]), 1)
  }
}
