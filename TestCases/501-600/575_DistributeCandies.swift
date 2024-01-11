//
//  575_DistributeCandies.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/11/24.
//

import XCTest

final class DistributeCandies: XCTestCase {
  func testDistributeCandies() throws {
    let solution = Solution_575()
    XCTAssertEqual(solution.distributeCandies([1,1,2,2,3,3]), 3)
    XCTAssertEqual(solution.distributeCandies([1,1,2,3]), 2)
    XCTAssertEqual(solution.distributeCandies([6,6,6,6]), 1)
  }
}
