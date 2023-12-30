//
//  448_FindAllNumbersDisappearedInAnArray.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/30/23.
//

import XCTest

final class FindAllNumbersDisappearedInAnArray: XCTestCase {
  func testFindDisappearedNumbers() throws {
    let solution = Solution_448()
    XCTAssertEqual(Set(solution.findDisappearedNumbers([1])), [])
    XCTAssertEqual(Set(solution.findDisappearedNumbers([4, 3, 2, 7, 8, 2, 3, 1])), [5, 6])
    XCTAssertEqual(Set(solution.findDisappearedNumbers([1, 1])), [2])
  }
}
