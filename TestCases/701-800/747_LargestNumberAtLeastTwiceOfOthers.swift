//
//  747_LargestNumberAtLeastTwiceOfOthers.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/21/24.
//

import XCTest

final class LargestNumberAtLeastTwiceOfOthers: XCTestCase {
  func test_dominantIndex() throws {
    let solution = Solution_747()
    XCTAssertEqual(solution.dominantIndex([3, 6, 1, 0]), 1)
    XCTAssertEqual(solution.dominantIndex([1, 2, 3, 4]), -1)
  }
}
