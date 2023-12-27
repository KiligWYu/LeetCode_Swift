//
//  228_SummaryRanges.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/7/23.
//

import XCTest

final class SummaryRanges: XCTestCase {
  func testAummaryRanges() throws {
    let nums = [0, 1, 2, 4, 5, 7],
        nums2 = [0, 2, 3, 4, 6, 8, 9],
        nums3 = [1],
        nums4 = [Int]()

    let solution = Solution_228()
    XCTAssertEqual(solution.summaryRanges(nums), ["0->2", "4->5", "7"])
    XCTAssertEqual(solution.summaryRanges(nums2), ["0", "2->4", "6", "8->9"])
    XCTAssertEqual(solution.summaryRanges(nums3), ["1"])
    XCTAssertEqual(solution.summaryRanges(nums4), [String]())
  }
}
