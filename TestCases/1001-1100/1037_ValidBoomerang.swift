//
//  1037_ValidBoomerang.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/20/24.
//

import XCTest

final class ValidBoomerang: XCTestCase {
  func test_isBoomerang() throws {
    let solution = Solution_1037()
    XCTAssertTrue(solution.isBoomerang([[1, 1], [2, 3], [3, 2]]))
    XCTAssertFalse(solution.isBoomerang([[1, 1], [2, 2], [3, 3]]))
  }
}
