//
//  1287_ElementAppearingMoreThan25%InSortedArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/27/24.
//

import XCTest

final class ElementAppearingMoreThan25PercentInSortedArray: XCTestCase {
  func test_findSpecialInteger() throws {
    let solution = Solution_1287()
    XCTAssertEqual(solution.findSpecialInteger([1, 2, 2, 6, 6, 6, 6, 7, 10]), 6)
    XCTAssertEqual(solution.findSpecialInteger([1, 1]), 1)
  }
}
