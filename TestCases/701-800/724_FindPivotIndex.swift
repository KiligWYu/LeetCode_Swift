//
//  724_FindPivotIndex.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/20/24.
//

import XCTest

final class FindPivotIndex: XCTestCase {
  func test_pivotIndex() throws {
    let solution = Solution_724()
    XCTAssertEqual(solution.pivotIndex([1]), 0)
    XCTAssertEqual(solution.pivotIndex([1, 7, 3, 6, 5, 6]), 3)
    XCTAssertEqual(solution.pivotIndex([1, 2, 3]), -1)
    XCTAssertEqual(solution.pivotIndex([2, 1, -1]), 0)
    XCTAssertEqual(solution.pivotIndex([1, -1, 2]), 2)
  }
}
