//
//  771_JewelsAndStones.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/23/24.
//

import XCTest

final class JewelsAndStones: XCTestCase {
  func test_numJewelsInStones() throws {
    let solution = Solution_771()
    XCTAssertEqual(solution.numJewelsInStones("aA", "aAAbbbb"), 3)
    XCTAssertEqual(solution.numJewelsInStones("z", "ZZ"), 0)
  }
}
