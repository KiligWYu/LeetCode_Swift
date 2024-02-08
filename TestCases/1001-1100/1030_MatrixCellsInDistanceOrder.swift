//
//  1030_MatrixCellsInDistanceOrder.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/8/24.
//

import XCTest

final class MatrixCellsInDistanceOrder: XCTestCase {
  func test_allCellsDistOrder() throws {
    let solution = Solution_1030()
    XCTAssertEqual(
      solution.allCellsDistOrder(1, 2, 0, 0),
      [[0, 0], [0, 1]]
    )
    XCTAssertEqual(
      solution.allCellsDistOrder(2, 2, 0, 1),
      [[0, 1], [0, 0], [1, 1], [1, 0]]
    )
    XCTAssertEqual(
      solution.allCellsDistOrder(2, 3, 1, 2),
      [[1, 2], [0, 2], [1, 1], [0, 1], [1, 0], [0, 0]]
    )
  }
}
