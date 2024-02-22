//
//  1103_DistributeCandiesToPeople.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/22/24.
//

import XCTest

final class DistributeCandiesToPeople: XCTestCase {
  func test_distributeCandies() throws {
    let solution = Solution_1103()
    XCTAssertEqual(solution.distributeCandies(7, 4), [1, 2, 3, 1])
    XCTAssertEqual(solution.distributeCandies(10, 3), [5, 2, 3])
  }
}
