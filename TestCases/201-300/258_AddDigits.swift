//
//  258_AddDigits.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/13/23.
//

import XCTest

final class AddDigits: XCTestCase {
  func testAddDigits() throws {
    let solution = Solution_258()
    XCTAssertEqual(solution.addDigits(38), 2)
    XCTAssertEqual(solution.addDigits(0), 0)
    XCTAssertEqual(solution.addDigits(9), 9)
    XCTAssertEqual(solution.addDigits(10), 1)
    XCTAssertEqual(solution.addDigits(11), 2)
    XCTAssertEqual(solution.addDigits(99), 9)
    XCTAssertEqual(solution.addDigits(100), 1)
    XCTAssertEqual(solution.addDigits(12345), 6)
    XCTAssertEqual(solution.addDigits(54817), 7)
  }
}
