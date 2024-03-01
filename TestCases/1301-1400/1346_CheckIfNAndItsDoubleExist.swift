//
//  1346_CheckIfNAndItsDoubleExist.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 3/1/24.
//

import XCTest

final class CheckIfNAndItsDoubleExist: XCTestCase {
  func test_checkIfExist() throws {
    let solution = Solution_1346()
    XCTAssertTrue(solution.checkIfExist([10, 2, 5, 3]))
    XCTAssertFalse(solution.checkIfExist([3, 1, 7, 11]))
  }
}
