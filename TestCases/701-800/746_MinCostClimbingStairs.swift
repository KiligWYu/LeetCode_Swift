//
//  746_MinCostClimbingStairs.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/21/24.
//

import XCTest

final class MinCostClimbingStairs: XCTestCase {
  func test_minCostClimbingStairs() throws {
    let solution = Solution_746()
    XCTAssertEqual(solution.minCostClimbingStairs([10, 15, 20]), 15)
    XCTAssertEqual(solution.minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]), 6)
  }
}
