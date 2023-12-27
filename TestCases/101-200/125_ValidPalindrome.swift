//
//  125_ValidPalindrome.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/16/23.
//

import XCTest

final class ValidPalindrome: XCTestCase {
  func testEmptyString() throws {
    let str = ""
    let str2 = " "
    let s = Solution_125()
    XCTAssert(s.isPalindrome(str))
    XCTAssert(s.isPalindrome(str2))
  }

  func testPalindromeString() throws {
    let str = "A man, a plan, a canal: Panama"
    let s = Solution_125()
    XCTAssert(s.isPalindrome(str))
  }

  func testUnpalindromeString() throws {
    let str = "race a car"
    let s = Solution_125()
    XCTAssertFalse(s.isPalindrome(str))
  }
}
