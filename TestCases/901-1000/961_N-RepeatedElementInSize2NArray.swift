//
//  961_N-RepeatedElementInSize2NArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/4/24.
//

import XCTest

final class NRepeatedElementInSize2NArray: XCTestCase {
  func test_repeatedNTimes() throws {
    let solution = Solution_961()
    XCTAssertEqual(solution.repeatedNTimes([1, 1, 2, 3]), 1)
    XCTAssertEqual(solution.repeatedNTimes([1, 2, 3, 3]), 3)
    XCTAssertEqual(solution.repeatedNTimes([2, 1, 2, 5, 3, 2]), 2)
    XCTAssertEqual(solution.repeatedNTimes([5, 1, 5, 2, 5, 3, 5, 4]), 5)
  }
}
