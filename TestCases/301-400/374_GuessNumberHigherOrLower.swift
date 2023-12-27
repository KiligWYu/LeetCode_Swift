//
//  374_GuessNumberHigherOrLower.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/23/23.
//

import XCTest

final class GuessNumberHigherOrLower: XCTestCase {
  func testGuessNumber() throws {
    let solution = Solution_374()

    solution.pick = 6
    XCTAssertEqual(solution.guessNumber(10), 6)

    solution.pick = 1
    XCTAssertEqual(solution.guessNumber(1), 1)

    solution.pick = 1
    XCTAssertEqual(solution.guessNumber(2), 1)
  }
}
