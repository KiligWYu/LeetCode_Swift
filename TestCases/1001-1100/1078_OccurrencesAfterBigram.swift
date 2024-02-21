//
//  1078_OccurrencesAfterBigram.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/21/24.
//

import XCTest

final class OccurrencesAfterBigram: XCTestCase {
  func test_findOcurrences() throws {
    let solution = Solution_1078()
    XCTAssertEqual(
      solution.findOcurrences("alice is a good girl she is a good student", "a", "good"),
      ["girl", "student"])
    XCTAssertEqual(
      solution.findOcurrences("we will we will rock you", "we", "will"),
      ["we", "rock"])
    XCTAssertEqual(
      solution.findOcurrences("we", "we", "will"),
      [])
  }
}
