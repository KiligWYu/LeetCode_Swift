//
//  812_LargestTriangleArea.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/24/24.
//

import XCTest

final class LargestTriangleArea: XCTestCase {
  func test_largestTriangleArea() throws {
    let solution = Solution_812()
    XCTAssertEqual(solution.largestTriangleArea([[0, 0], [0, 1], [1, 0], [0, 2], [2, 0]]), 2)
    XCTAssertEqual(solution.largestTriangleArea([[1, 0], [0, 0], [0, 1]]), 0.5)
  }
}
