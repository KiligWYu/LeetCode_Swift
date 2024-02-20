//
//  1046_LastStoneWeight.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/20/24.
//

import XCTest

final class LastStoneWeight: XCTestCase {
  func test_lastStoneWeight() throws {
    let solution = Solution_1046()
    XCTAssertEqual(solution.lastStoneWeight([2, 7, 4, 1, 8, 1]), 1)
    XCTAssertEqual(solution.lastStoneWeight([1, 1]), 0)
    XCTAssertEqual(solution.lastStoneWeight([1]), 1)
  }
}
