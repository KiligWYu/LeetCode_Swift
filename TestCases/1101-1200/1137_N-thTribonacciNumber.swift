//
//  1137_N-thTribonacciNumber.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/23/24.
//

import XCTest

final class NthTribonacciNumber: XCTestCase {
  func test_tribonacci() throws {
    let solution = Solution_1137()
    XCTAssertEqual(solution.tribonacci(1), 1)
    XCTAssertEqual(solution.tribonacci(4), 4)
    XCTAssertEqual(solution.tribonacci(25), 1389537)
  }
}
