//
//  977_SquaresOfASortedArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/4/24.
//

import XCTest

final class SquaresOfASortedArray: XCTestCase {
  func test_sortedSquares() throws {
    let solution = Solution_977()
    XCTAssertEqual(solution.sortedSquares([-4, -1, 0, 3, 10]), [0, 1, 9, 16, 100])
    XCTAssertEqual(solution.sortedSquares([-7, -3, 2, 3, 11]), [4, 9, 9, 49, 121])
  }
}
