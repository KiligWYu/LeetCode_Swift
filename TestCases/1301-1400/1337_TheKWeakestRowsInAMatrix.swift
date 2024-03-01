//
//  1337_TheKWeakestRowsInAMatrix.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 3/1/24.
//

import XCTest

final class TheKWeakestRowsInAMatrix: XCTestCase {
  func test_kWeakestRows() throws {
    let solution = Solution_1337()
    let mat1 = [[1, 1, 0, 0, 0],
                [1, 1, 1, 1, 0],
                [1, 0, 0, 0, 0],
                [1, 1, 0, 0, 0],
                [1, 1, 1, 1, 1]]
    let mat2 = [[1, 0, 0, 0],
                [1, 1, 1, 1],
                [1, 0, 0, 0],
                [1, 0, 0, 0]]
    XCTAssertEqual(solution.kWeakestRows(mat1, 3), [2, 0, 3])
    XCTAssertEqual(solution.kWeakestRows(mat2, 2), [0, 2])
  }
}
