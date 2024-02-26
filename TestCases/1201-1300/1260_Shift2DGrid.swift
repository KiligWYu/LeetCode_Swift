//
//  1260_Shift2DGrid.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/26/24.
//

import XCTest

final class Shift2DGrid: XCTestCase {
  func test_shiftGrid() throws {
    let solution = Solution_1260()
    XCTAssertEqual(
      solution.shiftGrid([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 1),
      [[9, 1, 2], [3, 4, 5], [6, 7, 8]]
    )
    XCTAssertEqual(
      solution.shiftGrid([[3, 8, 1, 9], [19, 7, 2, 5], [4, 6, 11, 10], [12, 0, 21, 13]], 4),
      [[12, 0, 21, 13], [3, 8, 1, 9], [19, 7, 2, 5], [4, 6, 11, 10]]
    )
    XCTAssertEqual(
      solution.shiftGrid([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 9),
      [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    )
  }
}
