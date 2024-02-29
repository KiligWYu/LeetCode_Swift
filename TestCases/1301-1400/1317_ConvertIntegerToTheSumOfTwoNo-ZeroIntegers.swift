//
//  1317_ConvertIntegerToTheSumOfTwoNo-ZeroIntegers.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import XCTest

final class ConvertIntegerToTheSumOfTwoNoZeroIntegers: XCTestCase {
  func test_getNoZeroIntegers() throws {
    let solution = Solution_1317()
    XCTAssertEqual(solution.getNoZeroIntegers(2), [1, 1])
    XCTAssertEqual(solution.getNoZeroIntegers(11), [2, 9])
  }
}
