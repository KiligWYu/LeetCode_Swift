//
//  860_LemonadeChange.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/27/24.
//

import XCTest

final class LemonadeChange: XCTestCase {
  func test_lemonadeChange() throws {
    let solution = Solution_860()
    XCTAssertTrue(solution.lemonadeChange([5, 5, 5, 10, 20]))
    XCTAssertFalse(solution.lemonadeChange([5, 5, 10, 10, 20]))
  }
}
