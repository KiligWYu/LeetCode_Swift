//
//  733_FloodFill.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/20/24.
//

import XCTest

final class FloodFill: XCTestCase {
  func test_floodFill() throws {
    let solution = Solution_733()
    XCTAssertEqual(
      solution.floodFill([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2),
      [[2, 2, 2], [2, 2, 0], [2, 0, 1]]
    )
    XCTAssertEqual(
      solution.floodFill([[0, 0, 0], [0, 0, 0]], 0, 0, 0),
      [[0, 0, 0], [0, 0, 0]]
    )
  }
}
