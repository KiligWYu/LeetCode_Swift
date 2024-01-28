//
//  868_BinaryGap.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/28/24.
//

import XCTest

final class BinaryGap: XCTestCase {
  func test_binaryGap() throws {
    let solution = Solution_868()
    XCTAssertEqual(solution.binaryGap(22), 2)
    XCTAssertEqual(solution.binaryGap(8), 0)
    XCTAssertEqual(solution.binaryGap(5), 2)
  }
}
