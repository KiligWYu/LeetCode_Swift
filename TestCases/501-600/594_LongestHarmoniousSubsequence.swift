//
//  594_LongestHarmoniousSubsequence.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/12/24.
//

import XCTest

final class LongestHarmoniousSubsequence: XCTestCase {
  func testFindLHS() throws {
    let solution = Solution_594()
    XCTAssertEqual(solution.findLHS([1, 3, 2, 2, 5, 2, 3, 7]), 5)
    XCTAssertEqual(solution.findLHS([1, 2, 3, 4]), 2)
    XCTAssertEqual(solution.findLHS([1, 1, 1, 1]), 0)
  }
}
