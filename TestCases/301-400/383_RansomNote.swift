//
//  383_RansomNote.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/23/23.
//

import XCTest

final class RansomNote: XCTestCase {
  func testCanConstruct() throws {
    let solution = Solution_383()
    XCTAssertFalse(solution.canConstruct("a", "b"))
    XCTAssertFalse(solution.canConstruct("aa", "ab"))
    XCTAssert(solution.canConstruct("aa", "aab"))
    XCTAssert(solution.canConstruct("thequickbrownfoxjumpsoverthelazydogandrunsaway",
                                    "aaaabcddeeefghhijklmnnnoooopqrrrssttuuuvwwxyyz"))
    XCTAssertFalse(solution.canConstruct("waltznymphforquickjigsvexbud",
                                         "abcdefghijklmnopqrstuvwxyz"))
  }
}
