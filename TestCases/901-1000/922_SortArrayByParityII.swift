//
//  922_SortArrayByParityII.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/1/24.
//

import XCTest

final class SortArrayByParityII: XCTestCase {
  func test_sortArrayByParityII() throws {
    let solution = Solution_922()
    XCTAssertEqual(solution.sortArrayByParityII([4, 2, 5, 7]), [4, 5, 2, 7])
    XCTAssertEqual(solution.sortArrayByParityII([2, 3]), [2, 3])
  }
}
