//
//  1047_RemoveAllAdjacentDuplicatesInString.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/20/24.
//

import XCTest

final class RemoveAllAdjacentDuplicatesInString: XCTestCase {
  func test_removeDuplicates() throws {
    let solution = Solution_1047()
    XCTAssertEqual(solution.removeDuplicates("abbaca"), "ca")
    XCTAssertEqual(solution.removeDuplicates("azxxzy"), "ay")
  }
}
