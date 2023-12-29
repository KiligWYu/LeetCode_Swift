//
//  441_ArrangingCoins.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/29/23.
//

import XCTest

final class _41_ArrangingCoins: XCTestCase {
  func testArrangeCoins() throws {
    let solution = Solution_441()
    XCTAssertEqual(solution.arrangeCoins(1), 1)
    XCTAssertEqual(solution.arrangeCoins(5), 2)
    XCTAssertEqual(solution.arrangeCoins(8), 3)
    XCTAssertEqual(solution.arrangeCoins(Int(Int32.max)), 65535)
  }
}
