//
//  1252_CellsWithOddValuesInAMatrix.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/26/24.
//

import XCTest

final class CellsWithOddValuesInAMatrix: XCTestCase {
  func test_oddCells() throws {
    let solution = Solution_1252()
    XCTAssertEqual(solution.oddCells(2, 3, [[0, 1], [1, 1]]), 6)
    XCTAssertEqual(solution.oddCells(2, 2, [[1, 1], [0, 0]]), 0)
  }
}
