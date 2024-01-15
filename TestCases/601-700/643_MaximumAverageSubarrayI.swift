//
//  643_MaximumAverageSubarrayI.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/15/24.
//

import XCTest

final class MaximumAverageSubarrayI: XCTestCase {
  func testFindMaxAverage() throws {
    let solution = Solution_643()
    XCTAssertEqual(solution.findMaxAverage([1, 12, -5, -6, 50, 3], 4), 12.75)
    XCTAssertEqual(solution.findMaxAverage([5], 1), 5)
  }
}
