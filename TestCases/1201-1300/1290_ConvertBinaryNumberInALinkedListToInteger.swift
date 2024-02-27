//
//  1290_ConvertBinaryNumberInALinkedListToInteger.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/27/24.
//

import XCTest

final class ConvertBinaryNumberInALinkedListToInteger: XCTestCase {
  func test_getDecimalValue() throws {
    let solution = Solution_1290()
    let head1 = [1, 0, 1].toList
    let head2 = [0].toList
    XCTAssertEqual(solution.getDecimalValue(head1), 5)
    XCTAssertEqual(solution.getDecimalValue(head2), 0)
  }
}
