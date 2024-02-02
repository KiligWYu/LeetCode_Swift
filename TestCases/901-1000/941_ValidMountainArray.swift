//
//  941_ValidMountainArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/2/24.
//

import XCTest

final class ValidMountainArray: XCTestCase {
  func test_validMountainArray() throws {
    let solution = Solution_941()
    XCTAssertFalse(solution.validMountainArray([2, 1]))
    XCTAssertFalse(solution.validMountainArray([3, 2, 1]))
    XCTAssertFalse(solution.validMountainArray([1, 2, 3]))
    XCTAssertFalse(solution.validMountainArray([3, 5, 5]))
    XCTAssertTrue(solution.validMountainArray([0, 3, 2, 1]))
    XCTAssertTrue(solution.validMountainArray([0, 2, 3, 4, 5, 2, 1, 0]))
    XCTAssertFalse(solution.validMountainArray([0, 2, 3, 4, 5, 2, 3, 0]))
    XCTAssertFalse(solution.validMountainArray([0, 2, 3, 3, 5, 2, 1, 0]))
  }
}
