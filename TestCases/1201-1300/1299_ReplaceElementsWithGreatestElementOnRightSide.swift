//
//  1299_ReplaceElementsWithGreatestElementOnRightSide.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/28/24.
//

import XCTest

final class ReplaceElementsWithGreatestElementOnRightSide: XCTestCase {
  func test_replaceElements() throws {
    let solution = Solution_1299()
    XCTAssertEqual(solution.replaceElements([17, 18, 5, 4, 6, 1]), [18, 6, 6, 6, 1, -1])
    XCTAssertEqual(solution.replaceElements([400]), [-1])
  }
}
