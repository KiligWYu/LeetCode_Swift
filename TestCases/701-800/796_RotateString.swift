//
//  796_RotateString.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/23/24.
//

import XCTest

final class RotateString: XCTestCase {
  func test_rotateString() throws {
    let solution = Solution_796()
    XCTAssertTrue(solution.rotateString("abcde", "abcde"))
    XCTAssertTrue(solution.rotateString("abcde", "bcdea"))
    XCTAssertTrue(solution.rotateString("abcde", "cdeab"))
    XCTAssertFalse(solution.rotateString("abcde", "abced"))
  }
}
