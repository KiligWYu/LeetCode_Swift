//
//  387_FirstUniqueCharacterInAString.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/24/23.
//

import XCTest

final class FirstUniqueCharacterInAString: XCTestCase {
  func testFirstUniqChar() throws {
    let solution = Solution_387()
    XCTAssertEqual(solution.firstUniqChar("leetcode"), 0)
    XCTAssertEqual(solution.firstUniqChar("loveleetcode"), 2)
    XCTAssertEqual(solution.firstUniqChar("aabb"), -1)
  }
}
