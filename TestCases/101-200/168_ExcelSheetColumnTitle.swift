//
//  168_ExcelSheetColumnTitle.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/23/23.
//

import XCTest

final class ExcelSheetColumnTitle: XCTestCase {
  func testColumnNumberToTitle() throws {
    let colunNumber = 1
    let colunNumber2 = 28
    let colunNumber3 = 701
    let colunNumber4 = 21_4748_3647

    let solution = Solution_168()
    XCTAssertEqual(solution.convertToTitle(colunNumber), "A")
    XCTAssertEqual(solution.convertToTitle(colunNumber2), "AB")
    XCTAssertEqual(solution.convertToTitle(colunNumber3), "ZY")
    XCTAssertEqual(solution.convertToTitle(colunNumber4), "FXSHRXW")
  }
}
