//
//  566_ReshapeTheMatrix.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/10/24.
//

import XCTest

final class ReshapeTheMatrix: XCTestCase {
  func testMatrixReshape() throws {
    let solution = Solution_566()
    XCTAssertEqual(
      solution.matrixReshape([[1, 2], [3, 4]], 1, 4),
      [[1, 2, 3, 4]]
    )
    XCTAssertEqual(
      solution.matrixReshape([[1, 2], [3, 4]], 2, 4),
      [[1, 2], [3, 4]]
    )
    XCTAssertEqual(
      solution.matrixReshape([[1, 2], [3, 4], [5, 6], [7, 8]], 2, 4),
      [[1, 2, 3, 4], [5, 6, 7, 8]]
    )
  }
}
