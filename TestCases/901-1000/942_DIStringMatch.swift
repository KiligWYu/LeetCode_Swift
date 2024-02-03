//
//  942_DIStringMatch.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/3/24.
//

import XCTest

final class DIStringMatch: XCTestCase {
  func test_diStringMatch() throws {
    let solution = Solution_942()
    XCTAssertEqual(solution.diStringMatch("IDID"), [0, 4, 1, 3, 2])
    XCTAssertEqual(solution.diStringMatch("III"), [0, 1, 2, 3])
    XCTAssertEqual(solution.diStringMatch("DDI"), [3, 2, 0, 1])
  }
}
