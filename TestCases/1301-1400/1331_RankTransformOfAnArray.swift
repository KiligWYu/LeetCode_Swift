//
//  1331_RankTransformOfAnArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import XCTest

final class RankTransformOfAnArray: XCTestCase {
  func test_arrayRankTransform() throws {
    let solution = Solution_1331()
    XCTAssertEqual(solution.arrayRankTransform([40, 10, 20, 30]), [4, 1, 2, 3])
    XCTAssertEqual(solution.arrayRankTransform([100, 100, 100]), [1, 1, 1])
    XCTAssertEqual(
      solution.arrayRankTransform([37, 12, 28, 9, 100, 56, 80, 5, 12]),
      [5, 3, 4, 2, 8, 6, 7, 1, 3]
    )
  }
}
