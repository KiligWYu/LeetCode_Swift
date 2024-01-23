//
//  766_ToeplitzMatrix.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/23/24.
//

import XCTest

final class ToeplitzMatrix: XCTestCase {
  func test_isToeplitzMatrix() throws {
    let solution = Solution_766()
    XCTAssertTrue(solution.isToeplitzMatrix([[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]]))
    XCTAssertFalse(solution.isToeplitzMatrix([[1, 2], [2, 2]]))
  }
}
