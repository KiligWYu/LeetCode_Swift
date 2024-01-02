//
//  476_NumberComplement.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/2/24.
//

import XCTest

final class NumberComplement: XCTestCase {
  func testFindComplement() throws {
    let solution = Solution_476()
    XCTAssertEqual(solution.findComplement(5), 2)
    XCTAssertEqual(solution.findComplement(1), 0)
    XCTAssertEqual(solution.findComplement(21_4748_3647), 0)
  }
}
