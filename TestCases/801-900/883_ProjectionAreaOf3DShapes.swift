//
//  883_ProjectionAreaOf3DShapes.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/29/24.
//

import XCTest

final class ProjectionAreaOf3DShapes: XCTestCase {
  func test_projectionArea() throws {
    let solution = Solution_883()
    XCTAssertEqual(solution.projectionArea([[1, 2], [3, 4]]), 17)
    XCTAssertEqual(solution.projectionArea([[2]]), 5)
    XCTAssertEqual(solution.projectionArea([[1, 0], [0, 2]]), 8)
  }
}
