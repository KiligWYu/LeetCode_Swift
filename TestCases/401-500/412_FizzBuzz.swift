//
//  412_FizzBuzz.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/28/23.
//

import XCTest

final class FizzBuzz: XCTestCase {
  func testFizzBuzz() throws {
    let solution = Solution_412()
    XCTAssertEqual(solution.fizzBuzz(3), ["1", "2", "Fizz"])
    XCTAssertEqual(solution.fizzBuzz(5), ["1", "2", "Fizz", "4", "Buzz"])
    XCTAssertEqual(solution.fizzBuzz(15), ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"])
  }
}
