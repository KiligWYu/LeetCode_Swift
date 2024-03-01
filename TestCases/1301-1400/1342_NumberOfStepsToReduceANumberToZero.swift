//
//  1342_NumberOfStepsToReduceANumberToZero.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 3/1/24.
//

import XCTest

final class NumberOfStepsToReduceANumberToZero: XCTestCase {
  func test_numberOfSteps() throws {
    let solution = Solution_1342()
    XCTAssertEqual(solution.numberOfSteps(0), 0)
    XCTAssertEqual(solution.numberOfSteps(8), 4)
    XCTAssertEqual(solution.numberOfSteps(14), 6)
    XCTAssertEqual(solution.numberOfSteps(123), 12)
  }
}
