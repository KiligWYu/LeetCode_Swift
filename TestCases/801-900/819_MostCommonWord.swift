//
//  819_MostCommonWord.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/25/24.
//

import XCTest

final class MostCommonWord: XCTestCase {
  func test_mostCommonWord() throws {
    let solution = Solution_819()
    XCTAssertEqual(solution.mostCommonWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]), "ball")
    XCTAssertEqual(solution.mostCommonWord("Bob hit a ball,the hit BALL flew far after it was hit.", ["hit"]), "ball")
    XCTAssertEqual(solution.mostCommonWord("a.", []), "a")
    XCTAssertEqual(solution.mostCommonWord(".", []), "")
  }
}
