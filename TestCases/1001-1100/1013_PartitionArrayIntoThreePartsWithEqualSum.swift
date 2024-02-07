//
//  1013_PartitionArrayIntoThreePartsWithEqualSum.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/7/24.
//

import XCTest

final class PartitionArrayIntoThreePartsWithEqualSum: XCTestCase {
  func test_canThreePartsEqualSum() throws {
    let solution = Solution_1013()
    XCTAssertFalse(solution.canThreePartsEqualSum([1, 2, 1]))
    XCTAssertTrue(solution.canThreePartsEqualSum([0, 2, 1, -6, 6, -7, 9, 1, 2, 0, 1]))
    XCTAssertFalse(solution.canThreePartsEqualSum([0, 2, 1, -6, 6, 7, 9, -1, 2, 0, 1]))
    XCTAssertTrue(solution.canThreePartsEqualSum([3, 3, 6, 5, -2, 2, 5, 1, -9, 4]))
  }
}
