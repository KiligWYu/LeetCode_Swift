//
//  409_LongestPalindrome.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/27/23.
//

import XCTest

final class LongestPalindrome: XCTestCase {
  func testLongestPalindrome() throws {
    let solution = Solution_409()
    XCTAssertEqual(solution.longestPalindrome("abccccdd"), 7)
    XCTAssertEqual(solution.longestPalindrome("a"), 1)
    XCTAssertEqual(solution.longestPalindrome("thequickbrownfoxjumpsoverthelazydogandrunsaway"), 29)
    XCTAssertEqual(solution.longestPalindrome("thequickbrownfoxjumpsoverthelazydogandrunsawaythequickbrownfoxjumpsoverthelazydogandrunsaway"), 92)
  }
}
