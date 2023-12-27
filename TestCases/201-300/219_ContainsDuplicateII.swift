//
//  219_ContainsDuplicateII.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/3/23.
//

import XCTest

final class ContainsDuplicateII: XCTestCase {
  func testContainsNearbyDuplicate() throws {
    let nums = [Int](),
        nums2 = [1, 2, 3, 1],
        nums3 = [1, 0, 1, 1],
        nums4 = [1, 2, 3, 1, 2, 3]

    let solution = Solution_219()
    XCTAssertFalse(solution.containsNearbyDuplicate(nums, 0))
    XCTAssert(solution.containsNearbyDuplicate(nums2, 3))
    XCTAssert(solution.containsNearbyDuplicate(nums3, 1))
    XCTAssertFalse(solution.containsNearbyDuplicate(nums4, 2))
  }
}
