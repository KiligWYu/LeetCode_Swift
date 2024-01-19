//
//  709_ToLowerCase.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/19/24.
//

import XCTest

final class ToLowerCase: XCTestCase {
  func testToLowerCase() throws {
    let solution = Solution_709()
    XCTAssertEqual(solution.toLowerCase("Hello"), "hello")
    XCTAssertEqual(solution.toLowerCase("here"), "here")
    XCTAssertEqual(solution.toLowerCase("LOVELY"), "lovely")
  }
}
