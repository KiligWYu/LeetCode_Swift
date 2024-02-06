//
//  1005_MaximizeSumOfArrayAfterKNegations.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/6/24.
//

import XCTest

final class MaximizeSumOfArrayAfterKNegations: XCTestCase {
  func test_largestSumAfterKNegations() throws {
    let solution = Solution_1005()
    XCTAssertEqual(solution.largestSumAfterKNegations([4, 2, 3], 1), 5)
    XCTAssertEqual(solution.largestSumAfterKNegations([3, -1, 0, 2], 3), 6)
    XCTAssertEqual(solution.largestSumAfterKNegations([2, -3, -1, 5, -4], 2), 13)
  }
}
