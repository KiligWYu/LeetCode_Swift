//
//  389_FindTheDifference.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/24/23.
//

import XCTest

final class FindTheDifference: XCTestCase {
  func testFindTheDifference() throws {
    let solution = Solution_389()
    XCTAssertEqual(solution.findTheDifference("abcd", "abcde"), "e")
    XCTAssertEqual(solution.findTheDifference("", "y"), "y")
    XCTAssertEqual(solution.findTheDifference("hello", "lheolo"), "o")
  }
}
