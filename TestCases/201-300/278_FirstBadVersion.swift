//
//  278_FirstBadVersion.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/14/23.
//

import XCTest

final class FirstBadVersion: XCTestCase {
  func testFirstBadVersion() throws {
    let solution = Solution_278()
    solution.versions = [true]
    XCTAssertEqual(solution.firstBadVersion(1), 1)

    solution.versions = [true, true]
    XCTAssertEqual(solution.firstBadVersion(2), 1)

    solution.versions = [false, true, true]
    XCTAssertEqual(solution.firstBadVersion(3), 2)

    solution.versions = [false, false, false, true, true]
    XCTAssertEqual(solution.firstBadVersion(5), 4)

    solution.versions = [false, false, false, false, true]
    XCTAssertEqual(solution.firstBadVersion(5), 5)

    solution.versions = [false, true, true, true, true]
    XCTAssertEqual(solution.firstBadVersion(5), 2)
  }
}
