//
//  1175_PrimeArrangements.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/23/24.
//

import XCTest

final class PrimeArrangements: XCTestCase {
  func test_numPrimeArrangements() throws {
    let solution = Solution_1175()
    XCTAssertEqual(solution.numPrimeArrangements(1), 1)
    XCTAssertEqual(solution.numPrimeArrangements(2), 1)
    XCTAssertEqual(solution.numPrimeArrangements(3), 2)
    XCTAssertEqual(solution.numPrimeArrangements(4), 4)
    XCTAssertEqual(solution.numPrimeArrangements(5), 12)
    XCTAssertEqual(solution.numPrimeArrangements(100), 682289015)
  }
}
