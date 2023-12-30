//
//  455_AssignCookies.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/30/23.
//

import XCTest

final class AssignCookies: XCTestCase {
  func testFindContentChildren() throws {
    let solution = Solution_455()
    XCTAssertEqual(solution.findContentChildren([1, 2], []), 0)
    XCTAssertEqual(solution.findContentChildren([1, 2, 3], [1, 1]), 1)
    XCTAssertEqual(solution.findContentChildren([1, 2], [1, 2, 3]), 2)
    XCTAssertEqual(
      solution.findContentChildren(
        [5, 3, 7, 8, 6, 7, 2, 3, 8, 10, 10, 9, 2, 1, 5, 1, 3, 3, 8],
        [4, 4, 9, 5, 9, 2, 8, 6, 5, 1, 5, 4, 7, 1, 6, 1, 4, 6, 10]
      ),
      16
    )
  }
}
