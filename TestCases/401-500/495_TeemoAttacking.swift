//
//  495_TeemoAttacking.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/4/24.
//

import XCTest

final class TeemoAttacking: XCTestCase {
  func testFindPoisonedDuration() throws {
    let solution = Solution_495()
    XCTAssertEqual(solution.findPoisonedDuration([1, 4], 0), 0)
    XCTAssertEqual(solution.findPoisonedDuration([1, 4], 2), 4)
    XCTAssertEqual(solution.findPoisonedDuration([1, 2], 2), 3)
  }
}
