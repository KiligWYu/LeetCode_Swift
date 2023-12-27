//
//  345_ReverseVowelsOfAString.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/20/23.
//

import XCTest

final class ReverseVowelsOfAString: XCTestCase {
  func testReverseVowels() throws {
    let solution = Solution_345()
    XCTAssertEqual(solution.reverseVowels(""), "")
    XCTAssertEqual(solution.reverseVowels("hello"), "holle")
    XCTAssertEqual(solution.reverseVowels("leetcode"), "leotcede")
    XCTAssertEqual(solution.reverseVowels("Hello, world!"), "Hollo, werld!")
    XCTAssertEqual(solution.reverseVowels("Hello, LEETCODE!"), "HEllO, LEETCoDe!")
  }
}
