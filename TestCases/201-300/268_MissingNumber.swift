//
//  268_MissingNumber.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/14/23.
//

import XCTest

final class MissingNumber: XCTestCase {
  func testMissingNumber() throws {
    let nums1 = [3, 0, 1],
        nums2 = [0, 1],
        nums3 = [9, 6, 4, 2, 3, 5, 7, 0, 1]

    let solution = Solution_268()
    XCTAssertEqual(solution.missingNumber(nums1), 2)
    XCTAssertEqual(solution.missingNumber(nums2), 2)
    XCTAssertEqual(solution.missingNumber(nums3), 8)
  }
}
