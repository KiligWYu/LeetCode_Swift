//
//  744_FindSmallestLetterGreaterThanTarget.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/21/24.
//

import XCTest

final class FindSmallestLetterGreaterThanTarget: XCTestCase {
  func test_nextGreatestLetter() throws {
    let solution = Solution_744()
    XCTAssertEqual(solution.nextGreatestLetter(["c", "f", "j"], "a"), "c")
    XCTAssertEqual(solution.nextGreatestLetter(["c", "f", "j"], "c"), "f")
    XCTAssertEqual(solution.nextGreatestLetter(["c", "f", "j"], "d"), "f")
    XCTAssertEqual(solution.nextGreatestLetter(["x", "x", "y", "y"], "z"), "x")
  }
}
