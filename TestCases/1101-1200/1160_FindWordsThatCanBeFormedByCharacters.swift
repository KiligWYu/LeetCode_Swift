//
//  1160_FindWordsThatCanBeFormedByCharacters.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/23/24.
//

import XCTest

final class FindWordsThatCanBeFormedByCharacters: XCTestCase {
  func test_countCharacters() throws {
    let solution = Solution_1160()
    XCTAssertEqual(
      solution.countCharacters(["cat", "bt", "hat", "tree"], "atach"),
      6)
    XCTAssertEqual(
      solution.countCharacters(["hello", "world", "leetcode"], "weldonehoneyr"),
      5)
    XCTAssertEqual(
      solution.countCharacters(["hello", "world", "leetcode"], "welldonehoneyr"),
      10)
  }
}
