//
//  925_LongPressedName.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/1/24.
//

import XCTest

final class LongPressedName: XCTestCase {
  func test_isLongPressedName() throws {
    let solution = Solution_925()
    XCTAssertTrue(solution.isLongPressedName("alex", "aaleex"))
    XCTAssertFalse(solution.isLongPressedName("saeed", "ssaaedd"))
  }
}
