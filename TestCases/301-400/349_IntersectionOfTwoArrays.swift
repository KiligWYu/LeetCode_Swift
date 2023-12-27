//
//  349_IntersectionOfTwoArrays.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/21/23.
//

import XCTest

final class IntersectionOfTwoArrays: XCTestCase {
  func testIntersection() throws {
    let solution = Solution_349()

    let nums1 = [1, 2, 2, 1], nums2 = [2, 2]
    let result1 = Set(solution.intersection(nums1, nums2))
    XCTAssertEqual(result1, [2])

    let nums12 = [4, 9, 5], nums22 = [9, 4, 9, 8, 4]
    let result2 = Set(solution.intersection(nums12, nums22))
    XCTAssertEqual(result2, [4, 9])
  }
}
