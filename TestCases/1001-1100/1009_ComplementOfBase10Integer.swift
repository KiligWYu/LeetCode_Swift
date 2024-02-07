//
//  1009_ComplementOfBase10Integer.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/7/24.
//

import XCTest

final class ComplementOfBase10Integer: XCTestCase {
  func test_bitwiseComplement() throws {
    let solution = Solution_1009()
    XCTAssertEqual(solution.bitwiseComplement(5), 2)
    XCTAssertEqual(solution.bitwiseComplement(7), 0)
    XCTAssertEqual(solution.bitwiseComplement(10), 5)
  }
}
