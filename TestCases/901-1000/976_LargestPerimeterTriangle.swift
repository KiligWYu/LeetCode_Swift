//
//  976_LargestPerimeterTriangle.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/4/24.
//

import XCTest

final class LargestPerimeterTriangle: XCTestCase {
  func test_largestPerimeter() throws {
    let solution = Solution_976()
    XCTAssertEqual(solution.largestPerimeter([2, 1, 2]), 5)
    XCTAssertEqual(solution.largestPerimeter([1, 2, 1]), 0)
    XCTAssertEqual(solution.largestPerimeter([1, 2, 1, 10]), 0)
    XCTAssertEqual(solution.largestPerimeter([3, 2, 3, 4]), 10)
    XCTAssertEqual(solution.largestPerimeter([3, 6, 2, 3]), 8)
  }
}
