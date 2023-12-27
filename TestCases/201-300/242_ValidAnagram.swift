//
//  242_ValidAnagram.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/11/23.
//

import XCTest

final class ValidAnagram: XCTestCase {
  func testIsAnagram() throws {
    let solution = Solution_242()
    XCTAssert(solution.isAnagram("anagram", "nagaram"))
    XCTAssertFalse(solution.isAnagram("rat", "car"))
  }
}
