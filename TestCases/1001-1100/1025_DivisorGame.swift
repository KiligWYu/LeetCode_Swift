//
//  1025_DivisorGame.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/8/24.
//

import XCTest

final class DivisorGame: XCTestCase {
  func test_divisorGame() throws {
    let solution = Solution_1025()
    XCTAssertTrue(solution.divisorGame(2))
    XCTAssertFalse(solution.divisorGame(3))
    XCTAssertTrue(solution.divisorGame(1000))
  }
}
