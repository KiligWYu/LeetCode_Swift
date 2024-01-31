//
//  914_XOfAKindInADeckOfCards.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/31/24.
//

import XCTest

final class XOfAKindInADeckOfCards: XCTestCase {
  func test_hasGroupsSizeX() throws {
    let solution = Solution_914()
    XCTAssertTrue(solution.hasGroupsSizeX([1, 2, 3, 4, 4, 3, 2, 1]))
    XCTAssertFalse(solution.hasGroupsSizeX([1, 1, 1, 2, 2, 2, 3, 3]))
    XCTAssertFalse(solution.hasGroupsSizeX([1, 2, 2, 2, 3, 3]))
    XCTAssertTrue(solution.hasGroupsSizeX([1, 1, 1, 1, 2, 2, 3, 3]))
  }
}
