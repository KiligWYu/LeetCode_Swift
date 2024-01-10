//
//  561_ArrayPartition.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/10/24.
//

import XCTest

final class ArrayPartition: XCTestCase {
  func testArrayPairSum() throws {
    let solution = Solution_561()
    XCTAssertEqual(solution.arrayPairSum([1, 4, 3, 2]), 4)
    XCTAssertEqual(solution.arrayPairSum([6, 2, 6, 5, 1, 2]), 9)
    XCTAssertEqual(solution.arrayPairSum([1, 4, 3, 2, 6, 2, 6, 5, 1, 2]), 15)
  }
}
