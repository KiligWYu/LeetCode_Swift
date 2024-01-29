//
//  884_UncommonWordsFromTwoSentences.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/29/24.
//

import XCTest

final class UncommonWordsFromTwoSentences: XCTestCase {
  func test_uncommonFromSentences() throws {
    let solution = Solution_884()
    XCTAssertEqual(
      Set(solution.uncommonFromSentences("this apple is sweet", "this apple is sour")),
      ["sweet", "sour"]
    )
    XCTAssertEqual(
      Set(solution.uncommonFromSentences("apple apple", "banana")),
      ["banana"]
    )
  }
}
