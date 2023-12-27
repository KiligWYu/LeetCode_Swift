//
//  350_IntersectionOfTwoArrays_II.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/21/23.
//

import XCTest

final class IntersectionOfTwoArrays_II: XCTestCase {
  func testIntersection() throws {
    let solution = Solution_350()

    let nums1 = [1, 2, 2, 1], nums2 = [2, 2]
    XCTAssertEqual(solution.intersect(nums1, nums2), [2, 2])

    let nums1_2 = [4, 9, 5], nums2_2 = [9, 4, 9, 8, 4]
    XCTAssertEqual(solution.intersect(nums1_2, nums2_2), [9, 4])
  }
}
