//
//  217_ContainsDuplicate.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/2/23.
//

import XCTest

final class ContainsDuplicate: XCTestCase {
  func testContainsDuplicate() throws {
    let nums = [Int]()
    let nums2 = [1, 2, 3, 1]
    let nums3 = [1, 2, 3, 4]
    let nums4 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]

    let solution = Solution_217()
    XCTAssertFalse(solution.containsDuplicate(nums))
    XCTAssert(solution.containsDuplicate(nums2))
    XCTAssertFalse(solution.containsDuplicate(nums3))
    XCTAssert(solution.containsDuplicate(nums4))
  }
}
