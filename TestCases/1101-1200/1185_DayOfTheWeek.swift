//
//  1185_DayOfTheWeek.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/24/24.
//

import XCTest

final class DayOfTheWeek: XCTestCase {
  func test_dayOfTheWeek() throws {
    let solution = Solution_1185()
    XCTAssertEqual(solution.dayOfTheWeek(31, 8, 2019), "Saturday")
    XCTAssertEqual(solution.dayOfTheWeek(1, 1, 2000), "Saturday")
    XCTAssertEqual(solution.dayOfTheWeek(18, 7, 1999), "Sunday")
    XCTAssertEqual(solution.dayOfTheWeek(15, 8, 1993), "Sunday")
  }
}
