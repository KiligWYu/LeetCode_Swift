//
//  821_ShortestDistanceToACharacter.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/25/24.
//

import XCTest

final class ShortestDistanceToACharacter: XCTestCase {
  func test_shortestToChar() throws {
    let solution = Solution_821()
    XCTAssertEqual(solution.shortestToChar("loveleetcode", "e"), [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0])
    XCTAssertEqual(solution.shortestToChar("aaab", "b"), [3, 2, 1, 0])
  }
}
