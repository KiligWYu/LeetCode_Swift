//
//  628_MaximumProductOfThreeNumbers.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/14/24.
//

import XCTest

final class MaximumProductOfThreeNumbers: XCTestCase {
  func testMaximumProduct() throws {
    let solution = Solution_628()
    XCTAssertEqual(solution.maximumProduct([1, 2, 3]), 6)
    XCTAssertEqual(solution.maximumProduct([1, 2, 3, 4]), 24)
    XCTAssertEqual(solution.maximumProduct([-1, -2, -3]), -6)
    XCTAssertEqual(solution.maximumProduct([-1, -2, -3, 0]), 0)
    XCTAssertEqual(solution.maximumProduct([2, -1, -2, -3, 0]), 12)
    XCTAssertEqual(solution.maximumProduct([8, 6, 7, 5, 1, 2, 3, 4]), 336)
  }
}
