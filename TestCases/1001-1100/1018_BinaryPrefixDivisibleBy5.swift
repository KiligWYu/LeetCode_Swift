//
//  1018_BinaryPrefixDivisibleBy5.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/7/24.
//

import XCTest

final class BinaryPrefixDivisibleBy5: XCTestCase {
  func test_prefixesDivBy5() throws {
    let solution = Solution_1018()
    XCTAssertEqual(solution.prefixesDivBy5([0, 1, 1]), [true, false, false])
    XCTAssertEqual(solution.prefixesDivBy5([1, 1, 1]), [false, false, false])
    XCTAssertEqual(solution.prefixesDivBy5([0, 1, 1, 1, 1, 1]), [true, false, false, false, true, false])
    XCTAssertEqual(solution.prefixesDivBy5([1, 1, 1, 0, 1]), [false, false, false, false, false])
  }
}
