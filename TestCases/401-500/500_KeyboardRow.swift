//
//  500_KeyboardRow.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/5/24.
//

import XCTest

final class KeyboardRow: XCTestCase {
  func testFindWords() throws {
    let solution = Solution_500()
    XCTAssertEqual(
      solution.findWords(["Hello", "Alaska", "Dad", "Peace"]),
      ["Alaska", "Dad"]
    )
    XCTAssertEqual(solution.findWords(["omk"]), [])
    XCTAssertEqual(
      solution.findWords(["adsdf", "sfd"]),
      ["adsdf", "sfd"]
    )
  }
}
