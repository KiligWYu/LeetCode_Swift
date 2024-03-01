//
//  1351_CountNegativeNumbersInASortedMatrix.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 3/1/24.
//

import XCTest

final class CountNegativeNumbersInASortedMatrix: XCTestCase {
  func test_countNegatives() throws {
    let solution = Solution_1351()
    let grid1 = [[4, 3, 2, -1],
                 [3, 2, 1, -1],
                 [1, 1, -1, -2],
                 [-1, -1, -2, -3]]
    let grid2 = [[3, 2], [1, 0]]
    XCTAssertEqual(solution.countNegatives(grid1), 8)
    XCTAssertEqual(solution.countNegatives(grid2), 0)
  }
}
