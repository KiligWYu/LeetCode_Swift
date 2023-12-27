//
//  303_RangeSumQueryImmutable.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/16/23.
//

import XCTest

final class RangeSumQueryImmutable: XCTestCase {
  func testNumArray() throws {
    let nums = NumArray([-2, 0, 3, -5, 2, -1])
    XCTAssertEqual(nums.sumRange(0, 2), 1)
    XCTAssertEqual(nums.sumRange(2, 5), -1)
    XCTAssertEqual(nums.sumRange(0, 5), -3)
  }
}
