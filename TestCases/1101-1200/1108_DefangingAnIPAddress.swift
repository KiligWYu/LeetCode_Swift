//
//  1108_DefangingAnIPAddress.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/22/24.
//

import XCTest

final class DefangingAnIPAddress: XCTestCase {
  func test_defangIPaddr() throws {
    let solution = Solution_1108()
    XCTAssertEqual(solution.defangIPaddr("1.1.1.1"), "1[.]1[.]1[.]1")
    XCTAssertEqual(solution.defangIPaddr("255.100.50.0"), "255[.]100[.]50[.]0")
  }
}
