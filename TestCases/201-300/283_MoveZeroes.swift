//
//  283_MoveZeroes.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/15/23.
//

import XCTest

final class MoveZeroes: XCTestCase {
  func testMoveZeros() throws {
    var nums1 = [0, 1, 0, 3, 12],
        nums2 = [0],
        nums3 = [0, 0, 0, 1],
        nums4 = [0, 0, 0, 0, 0, 0],
        nums5 = [Int]()

    let solution = Solution_283()

    solution.moveZeroes(&nums1)
    XCTAssertEqual(nums1, [1, 3, 12, 0, 0])

    solution.moveZeroes(&nums2)
    XCTAssertEqual(nums2, [0])

    solution.moveZeroes(&nums3)
    XCTAssertEqual(nums3, [1, 0, 0, 0])

    solution.moveZeroes(&nums4)
    XCTAssertEqual(nums4, [0, 0, 0, 0, 0, 0])

    solution.moveZeroes(&nums5)
    XCTAssertEqual(nums5, [Int]())
  }
}
