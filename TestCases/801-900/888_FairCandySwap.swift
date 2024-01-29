//
//  888_FairCandySwap.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/29/24.
//

import XCTest

final class FairCandySwap: XCTestCase {
  func test_fairCandySwap() throws {
    let solution = Solution_888()
    XCTAssertEqual(solution.fairCandySwap([1, 1], [2, 2]), [1, 2])
    XCTAssertEqual(solution.fairCandySwap([1, 2], [2, 3]), [1, 2])
    XCTAssertEqual(solution.fairCandySwap([2], [1, 3]), [2, 3])
  }
}
