//
//  338_CountingBits.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/18/23.
//

import XCTest

final class CountingBits: XCTestCase {
  func testCountBits() throws {
    let solution = Solution_338()
    XCTAssertEqual(solution.countBits(0), [0])
    XCTAssertEqual(solution.countBits(2), [0, 1, 1])
    XCTAssertEqual(solution.countBits(5), [0, 1, 1, 2, 1, 2])
    XCTAssertEqual(solution.countBits(11), [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3])
  }
}
