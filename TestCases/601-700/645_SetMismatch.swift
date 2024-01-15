//
//  645_SetMismatch.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/15/24.
//

import XCTest

final class SetMismatch: XCTestCase {
  func testFindErrorNums() throws {
    let solution = Solution_645()
    XCTAssertEqual(solution.findErrorNums([1, 2, 2, 4]), [2, 3])
    XCTAssertEqual(solution.findErrorNums([1, 1]), [1, 2])
    XCTAssertEqual(solution.findErrorNums([3, 10, 7, 9, 6, 2, 10, 5, 8, 4]), [10, 1])
  }
}
