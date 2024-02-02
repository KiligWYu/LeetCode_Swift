//
//  933_NumberOfRecentCalls.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/2/24.
//

import XCTest

final class NumberOfRecentCalls: XCTestCase {
  func test_RecentCounter() throws {
    let recentCounter = RecentCounter()
    XCTAssertEqual(recentCounter.ping(1), 1)
    XCTAssertEqual(recentCounter.ping(100), 2)
    XCTAssertEqual(recentCounter.ping(3001), 3)
    XCTAssertEqual(recentCounter.ping(3002), 3)
  }
}
