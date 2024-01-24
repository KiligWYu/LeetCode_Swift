//
//  806_NumberOfLinesToWriteString.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/24/24.
//

import XCTest

final class NumberOfLinesToWriteString: XCTestCase {
  func test_numberOfLines() throws {
    let solution = Solution_806()
    XCTAssertEqual(solution.numberOfLines([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], "abcdefghijklmnopqrstuvwxyz"), [3, 60])
    XCTAssertEqual(solution.numberOfLines([4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], "bbbcccdddaaa"), [2, 4])
  }
}
