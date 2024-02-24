//
//  1200_MinimumAbsoluteDifference.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/24/24.
//

import XCTest

final class MinimumAbsoluteDifference: XCTestCase {
  func test_minimumAbsDifference() throws {
    let solution = Solution_1200()
    XCTAssertEqual(
      solution.minimumAbsDifference([4, 2, 1, 3]),
      [[1, 2], [2, 3], [3, 4]]
    )
    XCTAssertEqual(
      solution.minimumAbsDifference([1, 3, 6, 10, 15]),
      [[1, 3]]
    )
    XCTAssertEqual(
      solution.minimumAbsDifference([3, 8, -10, 23, 19, -4, -14, 27]),
      [[-14, -10], [19, 23], [23, 27]]
    )
  }
}
