//
//  908_SmallestRangeI.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/31/24.
//

import XCTest

final class SmallestRangeI: XCTestCase {
  func test_smallestRangeI() throws {
    let solution = Solution_908()
    XCTAssertEqual(solution.smallestRangeI([1], 0), 0)
    XCTAssertEqual(solution.smallestRangeI([0, 10], 2), 6)
    XCTAssertEqual(solution.smallestRangeI([1, 3, 6], 3), 0)
  }
}
