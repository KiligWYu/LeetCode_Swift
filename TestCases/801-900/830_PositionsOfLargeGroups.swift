//
//  830_PositionsOfLargeGroups.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/26/24.
//

import XCTest

final class PositionsOfLargeGroups: XCTestCase {
  func test_largeGroupPositions() throws {
    let solution = Solution_830()
    XCTAssertEqual(solution.largeGroupPositions("abbxxxxzzy"), [[3, 6]])
    XCTAssertEqual(solution.largeGroupPositions("abc"), [])
    XCTAssertEqual(solution.largeGroupPositions("aaa"), [[0, 2]])
    XCTAssertEqual(solution.largeGroupPositions("abcdddeeeeaabbbcd"), [[3, 5], [6, 9], [12, 14]])
  }
}
