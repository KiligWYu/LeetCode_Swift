//
//  896_MonotonicArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/30/24.
//

import XCTest

final class MonotonicArray: XCTestCase {
  func test_isMonotonic() throws {
    let solution = Solution_896()
    XCTAssertTrue(solution.isMonotonic([1]))
    XCTAssertTrue(solution.isMonotonic([1, 2, 2, 3]))
    XCTAssertTrue(solution.isMonotonic([6, 5, 4, 4]))
    XCTAssertFalse(solution.isMonotonic([1, 3, 2]))
  }
}
