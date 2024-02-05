//
//  989_AddToArray-FormOfInteger.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/5/24.
//

import XCTest

final class AddToArrayFormOfInteger: XCTestCase {
  func test_addToArrayForm() throws {
    let solution = Solution_989()
    XCTAssertEqual(solution.addToArrayForm([1, 2, 0, 0], 34), [1, 2, 3, 4])
    XCTAssertEqual(solution.addToArrayForm([2, 7, 4], 181), [4, 5, 5])
    XCTAssertEqual(solution.addToArrayForm([2, 1, 5], 806), [1, 0, 2, 1])
    XCTAssertEqual(solution.addToArrayForm([9, 9, 9, 9, 9, 9, 9, 9, 9, 9], 1), [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
  }
}
