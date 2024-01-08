//
//  541_ReverseStringII.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/8/24.
//

import XCTest

final class ReverseStringII: XCTestCase {
  func testReverseStr() throws {
    let solution = Solution_541()
    XCTAssertEqual(solution.reverseStr("abcdefg", 2), "bacdfeg")
    XCTAssertEqual(solution.reverseStr("abcd", 1), "abcd")
    XCTAssertEqual(solution.reverseStr("abcd", 2), "bacd")
    XCTAssertEqual(solution.reverseStr("abcd", 5), "dcba")
    XCTAssertEqual(solution.reverseStr("abcdefgh", 3), "cbadefhg")
  }
}
