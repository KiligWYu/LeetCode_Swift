//
//  697_DegreeOfAnArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/18/24.
//

import XCTest

final class DegreeOfAnArray: XCTestCase {
  func testFindShortestSubArray() throws {
    let solution = Solution_697()
    XCTAssertEqual(solution.findShortestSubArray([1]), 1)
    XCTAssertEqual(solution.findShortestSubArray([1,2,2,3,1]), 2)
    XCTAssertEqual(solution.findShortestSubArray([1,2,2,3,1,4,2]), 6)
  }
}
