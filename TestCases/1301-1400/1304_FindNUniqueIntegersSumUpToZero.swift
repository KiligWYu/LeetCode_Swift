//
//  1304_FindNUniqueIntegersSumUpToZero.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/28/24.
//

import XCTest

final class FindNUniqueIntegersSumUpToZero: XCTestCase {
  func test_sumZero() throws {
    let solution = Solution_1304()
    XCTAssertEqual(solution.sumZero(5), [-10, 1, 2, 3, 4])
    XCTAssertEqual(solution.sumZero(3), [-3, 1, 2])
    XCTAssertEqual(solution.sumZero(1), [0])
  }
}
