//
//  344_ReverseString.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/20/23.
//

import XCTest

final class ReverseString: XCTestCase {
  func testReverseString() throws {
    let solution = Solution_344()

    var s1: [Character] = ["h", "e", "l", "l", "o"]
    solution.reverseString(&s1)
    XCTAssertEqual(s1, ["o", "l", "l", "e", "h"])

    var s2: [Character] = ["H", "a", "n", "n", "a", "h"]
    solution.reverseString(&s2)
    XCTAssertEqual(s2, ["h", "a", "n", "n", "a", "H"])

    var s3: [Character] = []
    solution.reverseString(&s3)
    XCTAssertEqual(s3, [])
  }
}
