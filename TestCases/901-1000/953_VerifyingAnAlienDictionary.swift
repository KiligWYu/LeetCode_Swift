//
//  953_VerifyingAnAlienDictionary.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/3/24.
//

import XCTest

final class VerifyingAnAlienDictionary: XCTestCase {
  func test_isAlienSorted() throws {
    let solution = Solution_953()
    XCTAssertTrue(solution.isAlienSorted(
      ["hello", "leetcode"],
      "hlabcdefgijkmnopqrstuvwxyz"))
    XCTAssertFalse(solution.isAlienSorted(
      ["word", "world", "row"],
      "worldabcefghijkmnpqstuvxyz"))
    XCTAssertFalse(solution.isAlienSorted(
      ["apple", "app"],
      "abcdefghijklmnopqrstuvwxyz"))
  }
}
