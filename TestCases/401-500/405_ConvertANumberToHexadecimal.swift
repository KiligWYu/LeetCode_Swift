//
//  405_ConvertANumberToHexadecimal.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/27/23.
//

import XCTest

final class ConvertANumberToHexadecimal: XCTestCase {
  func testNumberToHex() throws {
    let solution = Solution_405()
    XCTAssertEqual(solution.toHex(0), "0")
    XCTAssertEqual(solution.toHex(26), "1a")
    XCTAssertEqual(solution.toHex(-1), "ffffffff")
    XCTAssertEqual(solution.toHex(123456), "1e240")
    XCTAssertEqual(solution.toHex(2147483647), "7fffffff")
    XCTAssertEqual(solution.toHex(-2147483648), "80000000")
  }
}
