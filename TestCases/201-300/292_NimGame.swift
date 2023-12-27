//
//  292_NimGame.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/16/23.
//

import XCTest

final class NimGame: XCTestCase {
  func testNimGame() throws {
    let solution = Solution_292()
    XCTAssert(solution.canWinNim(1))
    XCTAssert(solution.canWinNim(2))
    XCTAssertFalse(solution.canWinNim(4))
    XCTAssertFalse(solution.canWinNim(100))
    XCTAssertFalse(solution.canWinNim(4))
    XCTAssert(solution.canWinNim(54817))
    XCTAssertFalse(solution.canWinNim(10_7374_1824))
  }
}
