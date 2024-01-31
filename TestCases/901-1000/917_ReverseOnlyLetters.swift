//
//  917_ReverseOnlyLetters.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/31/24.
//

import XCTest

final class ReverseOnlyLetters: XCTestCase {
  func test_reverseOnlyLetters() throws {
    let solution = Solution_917()
    XCTAssertEqual(solution.reverseOnlyLetters("ab-cd"), "dc-ba")
    XCTAssertEqual(solution.reverseOnlyLetters("a-bC-dEf-ghIj"), "j-Ih-gfE-dCba")
    XCTAssertEqual(solution.reverseOnlyLetters("Test1ng-Leet=code-Q!"), "Qedo1ct-eeLg=ntse-T!")
  }
}
