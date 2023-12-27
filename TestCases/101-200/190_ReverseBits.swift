//
//  190_ReverseBits.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/26/23.
//

import XCTest

final class ReverseBits: XCTestCase {
  func testReverseBits() throws {
    let n1 = 43261596 // 00000010100101000001111010011100
    let n2 = 4294967293 // 11111111111111111111111111111101

    let solution = Solution_190()
    XCTAssertEqual(solution.reverseBits(n1), 964176192) // 00111001011110000010100101000000
    XCTAssertEqual(solution.reverseBits(n2), 3221225471) // 10111111111111111111111111111111
  }
}
