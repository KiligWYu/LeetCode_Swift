//
//  1266_MinimumTimeVisitingAllPoints.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/26/24.
//

import XCTest

final class MinimumTimeVisitingAllPoints: XCTestCase {
  func test_minTimeToVisitAllPoints() throws {
    let solution = Solution_1266()
    XCTAssertEqual(
      solution.minTimeToVisitAllPoints([[1, 1], [3, 4], [-1, 0]]),
      7)
    XCTAssertEqual(
      solution.minTimeToVisitAllPoints([[3, 2], [-2, 2]]),
      5)
  }
}
