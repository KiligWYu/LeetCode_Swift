//
//  892_SurfaceAreaOf3DShapes.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/30/24.
//

import XCTest

final class SurfaceAreaOf3DShapes: XCTestCase {
  func test_surfaceArea() throws {
    let solution = Solution_892()
    XCTAssertEqual(solution.surfaceArea([[1, 2], [3, 4]]), 34)
    XCTAssertEqual(solution.surfaceArea([[1, 1, 1], [1, 0, 1], [1, 1, 1]]), 32)
    XCTAssertEqual(solution.surfaceArea([[2, 2, 2], [2, 1, 2], [2, 2, 2]]), 46)
  }
}
