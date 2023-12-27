//
//  169_MajorityElement.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/24/23.
//

import XCTest

final class MajorityElement: XCTestCase {
  func testMajorityElement() throws {
    let nums = [3, 2, 3]
    let nums2 = [2, 2, 1, 1, 1, 2, 2]

    let solution = Solution_169()
    XCTAssertEqual(solution.majorityElement(nums), 3)
    XCTAssertEqual(solution.majorityElement(nums2), 2)
  }
}
