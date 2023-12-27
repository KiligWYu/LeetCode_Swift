//
//  121_BestTimeToBuyAndSellStock.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/15/23.
//

import XCTest

final class BestTimeToBuyAndSellStock: XCTestCase {
  func testMaxProfit() throws {
    let prices1 = [7, 6, 4, 3, 1]
    let prices2 = [7, 1, 5, 3, 6, 4]

    let s = Solution_121()
    XCTAssertEqual(s.maxProfit(prices1), 0)
    XCTAssertEqual(s.maxProfit(prices2), 5)
  }
}
