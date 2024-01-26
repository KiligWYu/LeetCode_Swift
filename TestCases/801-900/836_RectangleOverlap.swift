//
//  836_RectangleOverlap.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/26/24.
//

import XCTest

final class RectangleOverlap: XCTestCase {
  func test_isRectangleOverlap() throws {
    let solution = Solution_836()
    XCTAssertTrue(solution.isRectangleOverlap([0, 0, 2, 2], [1, 1, 3, 3]))
    XCTAssertFalse(solution.isRectangleOverlap([0, 0, 1, 1], [1, 0, 2, 1]))
    XCTAssertFalse(solution.isRectangleOverlap([0, 0, 1, 1], [2, 2, 3, 3]))
  }
}
