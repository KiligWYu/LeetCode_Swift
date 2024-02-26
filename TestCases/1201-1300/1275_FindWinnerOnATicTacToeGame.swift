//
//  1275_FindWinnerOnATicTacToeGame.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/26/24.
//

import XCTest

final class FindWinnerOnATicTacToeGame: XCTestCase {
  func test_tictactoe() throws {
    let solution = Solution_1275()
    XCTAssertEqual(
      solution.tictactoe([[0, 0], [2, 0], [1, 1], [2, 1], [2, 2]]),
      "A")
    XCTAssertEqual(
      solution.tictactoe([[0, 0], [1, 1], [0, 1], [0, 2], [1, 0], [2, 0]]),
      "B")
    XCTAssertEqual(
      solution.tictactoe([[0, 0], [1, 1], [2, 0], [1, 0], [1, 2], [2, 1], [0, 1], [0, 2], [2, 2]]),
      "Draw")
    XCTAssertEqual(
      solution.tictactoe([[0, 0], [1, 1]]),
      "Pending")
  }
}
