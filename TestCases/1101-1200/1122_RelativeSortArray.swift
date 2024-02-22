//
//  1122_RelativeSortArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/22/24.
//

import XCTest

final class RelativeSortArray: XCTestCase {
  func test_relativeSortArray() throws {
    let solution = Solution_1122()
    XCTAssertEqual(
      solution.relativeSortArray([2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19],
                                 [2, 1, 4, 3, 9, 6]),
      [2, 2, 2, 1, 4, 3, 3, 9, 6, 7, 19]
    )
    XCTAssertEqual(
      solution.relativeSortArray([28, 6, 22, 8, 44, 17],
                                 [22, 28, 8, 6]),
      [22, 28, 8, 6, 17, 44]
    )
  }
}
