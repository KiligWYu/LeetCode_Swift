//
//  905_SortArrayByParity.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/31/24.
//

import XCTest

final class SortArrayByParity: XCTestCase {
  func test_sortArrayByParity() throws {
    let solution = Solution_905()
    XCTAssertEqual(solution.sortArrayByParity([3, 1, 2, 4]), [2, 4, 3, 1])
    XCTAssertEqual(solution.sortArrayByParity([0]), [0])
  }
}
