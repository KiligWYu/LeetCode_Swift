//
//  1232_CheckIfItIsAStraightLine.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/25/24.
//

import XCTest

final class CheckIfItIsAStraightLine: XCTestCase {
  func test_checkStraightLine() throws {
    let solution = Solution_1232()
    XCTAssertTrue(solution.checkStraightLine([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]]))
    XCTAssertFalse(solution.checkStraightLine([[1, 1], [2, 2], [3, 4], [4, 5], [5, 6], [7, 7]]))
  }
}
