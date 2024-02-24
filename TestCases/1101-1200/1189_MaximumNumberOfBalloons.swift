//
//  1189_MaximumNumberOfBalloons.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/24/24.
//

import XCTest

final class MaximumNumberOfBalloons: XCTestCase {
  func test_maxNumberOfBalloons() throws {
    let solution = Solution_1189()
    XCTAssertEqual(solution.maxNumberOfBalloons("nlaebolko"), 1)
    XCTAssertEqual(solution.maxNumberOfBalloons("loonbalxballpoon"), 2)
    XCTAssertEqual(solution.maxNumberOfBalloons("leetcode"), 0)
  }
}
