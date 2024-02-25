//
//  1207_UniqueNumberOfOccurrences.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/25/24.
//

import XCTest

final class UniqueNumberOfOccurrences: XCTestCase {
  func test_uniqueOccurrences() throws {
    let solution = Solution_1207()
    XCTAssertTrue(solution.uniqueOccurrences([1, 2, 2, 1, 1, 3]))
    XCTAssertFalse(solution.uniqueOccurrences([1, 2]))
    XCTAssertTrue(solution.uniqueOccurrences([-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]))
  }
}
