//
//  1221_SplitAStringInBalancedStrings.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/25/24.
//

import XCTest

final class SplitAStringInBalancedStrings: XCTestCase {
  func test_balancedStringSplit() throws {
    let solution = Solution_1221()
    XCTAssertEqual(solution.balancedStringSplit("RLRRLLRLRL"), 4)
    XCTAssertEqual(solution.balancedStringSplit("RLRRRLLRLL"), 2)
    XCTAssertEqual(solution.balancedStringSplit("LLLLRRRR"), 1)
    XCTAssertEqual(solution.balancedStringSplit("RLLLLRRRLR"), 3)
  }
}
