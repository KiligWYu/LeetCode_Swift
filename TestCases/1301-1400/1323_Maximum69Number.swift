//
//  1323_Maximum69Number.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import XCTest

final class Maximum69Number: XCTestCase {
  func test_maximum69Number() throws {
    let solution = Solution_1323()
    XCTAssertEqual(solution.maximum69Number(9669), 9969)
    XCTAssertEqual(solution.maximum69Number(9996), 9999)
    XCTAssertEqual(solution.maximum69Number(9999), 9999)
  }
}
