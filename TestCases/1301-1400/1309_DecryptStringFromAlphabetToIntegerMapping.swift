//
//  1309_DecryptStringFromAlphabetToIntegerMapping.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/28/24.
//

import XCTest

final class DecryptStringFromAlphabetToIntegerMapping: XCTestCase {
  func test_freqAlphabets() throws {
    let solution = Solution_1309()
    XCTAssertEqual(solution.freqAlphabets("10#11#12"), "jkab")
    XCTAssertEqual(solution.freqAlphabets("1326#"), "acz")
  }
}
