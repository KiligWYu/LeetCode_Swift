//
//  290_WordPattern.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/15/23.
//

import XCTest

final class WordPattern: XCTestCase {
  func testWordPattern() throws {
    let s1 = "dog cat cat dog",
        s2 = "dog cat cat fish",
        s3 = "dog cat cat dog",
        s4 = "the quick brown fox jumps over the lazy dog and runs away",
        s5 = "dog dog dog dog"

    let solution = Solution_290()
    XCTAssert(solution.wordPattern("abba", s1))
    XCTAssertFalse(solution.wordPattern("abba", s2))
    XCTAssertFalse(solution.wordPattern("aaaa", s3))
    XCTAssert(solution.wordPattern("abcdefaghijk", s4))
    XCTAssertFalse(solution.wordPattern("abba", s5))
  }
}
