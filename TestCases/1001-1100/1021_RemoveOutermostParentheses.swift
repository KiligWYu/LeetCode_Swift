//
//  1021_RemoveOutermostParentheses.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/7/24.
//

import XCTest

final class RemoveOutermostParentheses: XCTestCase {
  func test_removeOuterParentheses() throws {
    let solution = Solution_1021()
    XCTAssertEqual(solution.removeOuterParentheses("(()())(())"), "()()()")
    XCTAssertEqual(solution.removeOuterParentheses("(()())(())(()(()))"), "()()()()(())")
    XCTAssertEqual(solution.removeOuterParentheses("()()"), "")
  }
}
