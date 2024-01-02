//
//  463_IslandPerimeter.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/2/24.
//

import XCTest

final class IslandPerimeter: XCTestCase {
  func testIslandPerimeter() throws {
    let solution = Solution_463()
    XCTAssertEqual(solution.islandPerimeter([[]]), 0)
    XCTAssertEqual(
      solution.islandPerimeter([[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]]),
      16
    )
    XCTAssertEqual(solution.islandPerimeter([[1]]), 4)
    XCTAssertEqual(solution.islandPerimeter([[1, 0]]), 4)
  }
}
