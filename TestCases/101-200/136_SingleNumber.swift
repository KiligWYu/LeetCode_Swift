//
//  136_SingleNumber.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/17/23.
//

import XCTest

final class SingleNumber: XCTestCase {
  func testSingleNumber() throws {
    let nums1 = [1]
    let nums2 = [2, 2, 1]
    let nums3 = [4, 1, 2, 1, 2]

    let s = Solution_136()
    XCTAssertEqual(s.singleNumber(nums1), 1)
    XCTAssertEqual(s.singleNumber(nums2), 1)
    XCTAssertEqual(s.singleNumber(nums3), 4)
  }
}
