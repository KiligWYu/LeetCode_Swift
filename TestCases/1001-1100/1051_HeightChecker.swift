//
//  1051_HeightChecker.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/20/24.
//

import XCTest

final class HeightChecker: XCTestCase {
  func test_heightChecker() throws {
    let solution = Solution_1051()
    XCTAssertEqual(solution.heightChecker([1, 1, 4, 2, 1, 3]), 3)
    XCTAssertEqual(solution.heightChecker([5, 1, 2, 3, 4]), 5)
    XCTAssertEqual(solution.heightChecker([1, 2, 3, 4, 5]), 0)
  }
}
