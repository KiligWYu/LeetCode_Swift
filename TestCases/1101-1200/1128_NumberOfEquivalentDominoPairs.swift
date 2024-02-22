//
//  1128_NumberOfEquivalentDominoPairs.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/22/24.
//

import XCTest

final class NumberOfEquivalentDominoPairs: XCTestCase {
  func test_numEquivDominoPairs() throws {
    let solution = Solution_1128()
    XCTAssertEqual(
      solution.numEquivDominoPairs([[1, 2], [2, 1], [3, 4], [5, 6]]),
      1
    )
    XCTAssertEqual(
      solution.numEquivDominoPairs([[1, 2], [1, 2], [1, 1], [1, 2], [2, 2]]),
      3
    )
  }
}
