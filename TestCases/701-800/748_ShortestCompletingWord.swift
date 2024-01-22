//
//  748_ShortestCompletingWord.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/22/24.
//

import XCTest

final class ShortestCompletingWord: XCTestCase {
  func test_shortestCompletingWord() throws {
    let solution = Solution_748()
    XCTAssertEqual(solution.shortestCompletingWord("1s3 PSt", ["step", "steps", "stripe", "stepple"]), "steps")
    XCTAssertEqual(solution.shortestCompletingWord("1s3 456", ["looks", "pest", "stew", "show"]), "pest")
  }
}
