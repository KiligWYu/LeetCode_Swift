//
//  867_TransposeMatrix.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/28/24.
//

import XCTest

final class TransposeMatrix: XCTestCase {
  func test_transpose() throws {
    let solution = Solution_867()
    XCTAssertEqual(
      solution.transpose([[1, 2, 3], [4, 5, 6], [7, 8, 9]]),
      [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
    )
    XCTAssertEqual(
      solution.transpose([[1, 2, 3], [4, 5, 6]]),
      [[1, 4], [2, 5], [3, 6]]
    )
  }
}
