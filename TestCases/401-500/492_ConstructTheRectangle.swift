//
//  492_ConstructTheRectangle.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/4/24.
//

import XCTest

final class ConstructTheRectangle: XCTestCase {
  func testConstructRectangle() throws {
    let solution = Solution_492()
    XCTAssertEqual(solution.constructRectangle(4), [2, 2])
    XCTAssertEqual(solution.constructRectangle(37), [37, 1])
    XCTAssertEqual(solution.constructRectangle(122122), [427, 286])
  }
}
