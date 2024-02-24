//
//  1184_DistanceBetweenBusStops.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/24/24.
//

import XCTest

final class DistanceBetweenBusStops: XCTestCase {
  func test_distanceBetweenBusStops() throws {
    let solution = Solution_1184()
    XCTAssertEqual(solution.distanceBetweenBusStops([1,2,3,4], 0, 0), 0)
    XCTAssertEqual(solution.distanceBetweenBusStops([1,2,3,4], 0, 1), 1)
    XCTAssertEqual(solution.distanceBetweenBusStops([1,2,3,4], 0, 2), 3)
    XCTAssertEqual(solution.distanceBetweenBusStops([1,2,3,4], 0, 3), 4)
    XCTAssertEqual(solution.distanceBetweenBusStops([1,2,3,4], 3, 0), 4)
  }
}
