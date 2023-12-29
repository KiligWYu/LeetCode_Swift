//
//  434_NumberOfSegmentsInAString.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/29/23.
//

import XCTest

final class NumberOfSegmentsInAString: XCTestCase {
  func testCountSegments() throws {
    let solution = Solution_434()
    XCTAssertEqual(solution.countSegments(""), 0)
    XCTAssertEqual(solution.countSegments(" "), 0)
    XCTAssertEqual(solution.countSegments("Hello"), 1)
    XCTAssertEqual(solution.countSegments("Hello, my name is John"), 5)
    XCTAssertEqual(solution.countSegments("The quick brown fox jumps over the lazy dog and runs away."), 12)
  }
}
