//
//  605_CanPlaceFlowers.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/13/24.
//

import XCTest

final class CanPlaceFlowers: XCTestCase {
  func testCanPlaceFlowers() throws {
    let solution = Solution_605()
    XCTAssertTrue(solution.canPlaceFlowers([1, 0, 0, 0, 1], 0))
    XCTAssertTrue(solution.canPlaceFlowers([1, 0, 0, 0, 1], 1))
    XCTAssertTrue(solution.canPlaceFlowers([1, 0, 0, 0, 0, 0, 1], 2))
    XCTAssertFalse(solution.canPlaceFlowers([1, 0, 0, 0, 1], 2))
  }
}
