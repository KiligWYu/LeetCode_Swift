//
//  485_MaxConsecutiveOnes.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/3/24.
//

import XCTest

final class MaxConsecutiveOnes: XCTestCase {
  func testFindMaxConsecutiveOnes() throws {
    let solution = Solution_485()
    XCTAssertEqual(solution.findMaxConsecutiveOnes([0, 0, 0, 0, 0]), 0)
    XCTAssertEqual(solution.findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1]), 3)
    XCTAssertEqual(solution.findMaxConsecutiveOnes([1, 0, 1, 1, 0, 1]), 2)
  }
}
