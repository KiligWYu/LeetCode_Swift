//
//  1089_DuplicateZeros.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/21/24.
//

import XCTest

final class DuplicateZeros: XCTestCase {
  func test_duplicateZeros() throws {
    let solution = Solution_1089()

    var nums1 = [1, 0, 2, 3, 0, 4, 5, 0]
    solution.duplicateZeros(&nums1)
    XCTAssertEqual(nums1, [1, 0, 0, 2, 3, 0, 0, 4])

    var nums2 = [1, 2, 3]
    solution.duplicateZeros(&nums2)
    XCTAssertEqual(nums2, [1, 2, 3])
  }
}
