//
//  461_HammingDistance.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/2/24.
//

import XCTest

final class HammingDistance: XCTestCase {
  func testHammingDistance() throws {
    let solution = Solution_461()
    XCTAssertEqual(solution.hammingDistance(1, 4), 2)
    XCTAssertEqual(solution.hammingDistance(3, 1), 1)
    XCTAssertEqual(solution.hammingDistance(0, 21_4748_3647), 31)
  }
}
