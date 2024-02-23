//
//  1154_DayOfTheYear.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/23/24.
//

import XCTest

final class DayOfTheYear: XCTestCase {
  func test_dayOfYear() throws {
    let solution = Solution_1154()
    XCTAssertEqual(solution.dayOfYear("2019-01-09"), 9)
    XCTAssertEqual(solution.dayOfYear("2019-02-10"), 41)
    XCTAssertEqual(solution.dayOfYear("2024-03-01"), 61)
  }
}
