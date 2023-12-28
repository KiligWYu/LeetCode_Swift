//
//  414_ThirdMaximumNumber.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/28/23.
//

import XCTest

final class ThirdMaximumNumber: XCTestCase {
  func testThirdMax() throws {
    let solution = Solution_414()
    XCTAssertEqual(solution.thirdMax([3, 2, 1]), 1)
    XCTAssertEqual(solution.thirdMax([1, 2]), 2)
    XCTAssertEqual(solution.thirdMax([2, 2, 3, 1]), 1)
    XCTAssertEqual(
      solution.thirdMax([Int32.min, 0, Int32.max].map { Int($0) }),
      Int(Int32.min)
    )
  }
}
