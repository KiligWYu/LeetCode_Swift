//
//  509_FibonacciNumber.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/6/24.
//

import XCTest

final class FibonacciNumber: XCTestCase {
  func testFib() throws {
    let solution = Solution_509()
    XCTAssertEqual(solution.fib(0), 0)
    XCTAssertEqual(solution.fib(1), 1)
    XCTAssertEqual(solution.fib(2), 1)
    XCTAssertEqual(solution.fib(3), 2)
    XCTAssertEqual(solution.fib(10), 55)
    XCTAssertEqual(solution.fib(30), 83_2040)
  }
}
