//
//  804_UniqueMorseCodeWords.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/24/24.
//

import XCTest

final class UniqueMorseCodeWords: XCTestCase {
  func test_uniqueMorseRepresentations() throws {
    let solution = Solution_804()
    XCTAssertEqual(solution.uniqueMorseRepresentations(["gin", "zen", "gig", "msg"]), 2)
    XCTAssertEqual(solution.uniqueMorseRepresentations(["a"]), 1)
  }
}
