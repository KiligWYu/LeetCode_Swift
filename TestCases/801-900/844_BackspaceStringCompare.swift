//
//  844_BackspaceStringCompare.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/26/24.
//

import XCTest

final class BackspaceStringCompare: XCTestCase {
  func test_backspaceCompare() throws {
    let solution = Solution_844()
    XCTAssertTrue(solution.backspaceCompare("ab#c", "ad#c"))
    XCTAssertTrue(solution.backspaceCompare("ab##", "c#d#"))
    XCTAssertTrue(solution.backspaceCompare("##", "c#"))
    XCTAssertFalse(solution.backspaceCompare("a#c", "b"))
  }
}
