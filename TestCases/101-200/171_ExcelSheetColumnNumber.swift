//
//  171_ExcelSheetColumnNumber.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/25/23.
//

import XCTest

final class ExcelSheetColumnNumber: XCTestCase {
  func testTitleToNumber() throws {
    let title = "A"
    let title2 = "AB"
    let title3 = "ZY"
    let title4 = "FXSHRXW"

    let solution = Solution_171()
    XCTAssertEqual(solution.titleToNumber(title), 1)
    XCTAssertEqual(solution.titleToNumber(title2), 28)
    XCTAssertEqual(solution.titleToNumber(title3), 701)
    XCTAssertEqual(solution.titleToNumber(title4), 21_4748_3647)
  }
}
