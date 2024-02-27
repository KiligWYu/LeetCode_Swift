//
//  1281_SubtractTheProductAndSumOfDigitsOfAnInteger.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/27/24.
//

import XCTest

final class SubtractTheProductAndSumOfDigitsOfAnInteger: XCTestCase {
  func test_subtractProductAndSum() throws {
    let solution = Solution_1281()
    XCTAssertEqual(solution.subtractProductAndSum(234), 15)
    XCTAssertEqual(solution.subtractProductAndSum(4421), 21)
  }
}
