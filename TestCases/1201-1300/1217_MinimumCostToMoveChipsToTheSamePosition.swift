//
//  1217_MinimumCostToMoveChipsToTheSamePosition.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/25/24.
//

import XCTest

final class MinimumCostToMoveChipsToTheSamePosition: XCTestCase {
  func test_minCostToMoveChips() throws {
    let solution = Solution_1217()
    XCTAssertEqual(solution.minCostToMoveChips([1, 2, 3]), 1)
    XCTAssertEqual(solution.minCostToMoveChips([2, 2, 2, 3, 3]), 2)
    XCTAssertEqual(solution.minCostToMoveChips([1, 1000000000]), 1)
  }
}
