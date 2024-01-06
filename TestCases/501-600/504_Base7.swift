//
//  504_Base7.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/6/24.
//

import XCTest

final class Base7: XCTestCase {
  func testConvertToBase7() throws {
    let solution = Solution_504()
    XCTAssertEqual(solution.convertToBase7(0), "0")
    XCTAssertEqual(solution.convertToBase7(100), "202")
    XCTAssertEqual(solution.convertToBase7(-7), "-10")
    XCTAssertEqual(solution.convertToBase7(10000000), "150666343")
    XCTAssertEqual(solution.convertToBase7(-10000000), "-150666343")
  }
}
