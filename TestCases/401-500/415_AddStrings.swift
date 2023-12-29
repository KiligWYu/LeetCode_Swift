//
//  415_AddStrings.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/29/23.
//

import XCTest

final class AddStrings: XCTestCase {
  func testAddStrings() throws {
    let solution = Solution_415()
    XCTAssertEqual(solution.addStrings("11", "123"), "134")
    XCTAssertEqual(solution.addStrings("456", "77"), "533")
    XCTAssertEqual(solution.addStrings("0", "0"), "0")
    XCTAssertEqual(solution.addStrings("999", "999"), "1998")
  }
}
