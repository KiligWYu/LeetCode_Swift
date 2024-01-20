//
//  717_1-bitAnd2-bitCharacters.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/20/24.
//

import XCTest

final class OneBitAndTwoBitCharacters: XCTestCase {
  func test_isOneBitCharacter() throws {
    let solution = Solution_717()
    XCTAssertTrue(solution.isOneBitCharacter([0]))
    XCTAssertTrue(solution.isOneBitCharacter([0, 0]))
    XCTAssertFalse(solution.isOneBitCharacter([1, 0]))
    XCTAssertTrue(solution.isOneBitCharacter([1, 0, 0]))
    XCTAssertFalse(solution.isOneBitCharacter([1, 1, 1, 0]))
  }
}
