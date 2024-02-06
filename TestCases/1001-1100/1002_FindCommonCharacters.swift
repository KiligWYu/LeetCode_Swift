//
//  1002_FindCommonCharacters.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/6/24.
//

import XCTest

final class FindCommonCharacters: XCTestCase {
  func test_commonChars() throws {
    let solution = Solution_1002()
    XCTAssertEqual(
      solution.commonChars(["bella", "label", "roller"]),
      ["e", "l", "l"]
    )
    XCTAssertEqual(
      solution.commonChars(["cool", "lock", "cook"]),
      ["c", "o"]
    )
  }
}
