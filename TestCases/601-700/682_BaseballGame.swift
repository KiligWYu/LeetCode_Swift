//
//  682_BaseballGame.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/17/24.
//

import XCTest

final class BaseballGame: XCTestCase {
  func testCalPoints() throws {
    let solution = Solution_682()
    XCTAssertEqual(solution.calPoints(["5", "2", "C", "D", "+"]), 30)
    XCTAssertEqual(solution.calPoints(["5", "-2", "4", "C", "D", "9", "+", "+"]), 27)
    XCTAssertEqual(solution.calPoints(["1", "C"]), 0)
  }
}
