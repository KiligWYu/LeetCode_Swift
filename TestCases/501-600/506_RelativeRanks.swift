//
//  506_RelativeRanks.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/6/24.
//

import XCTest

final class RelativeRanks: XCTestCase {
  func testFindRelativeRanks() throws {
    let solution = Solution_506()
    XCTAssertEqual(
      solution.findRelativeRanks([5, 4, 3, 2, 1]),
      ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
    )
    XCTAssertEqual(
      solution.findRelativeRanks([10, 3, 8, 9, 4]),
      ["Gold Medal", "5", "Bronze Medal", "Silver Medal", "4"]
    )
  }
}
