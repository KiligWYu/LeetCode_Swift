//
//  929_UniqueEmailAddresses.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/1/24.
//

import XCTest

final class UniqueEmailAddresses: XCTestCase {
  func test_numUniqueEmails() throws {
    let solution = Solution_929()
    XCTAssertEqual(
      solution.numUniqueEmails([
        "test.email+alex@leetcode.com",
        "test.e.mail+bob.cathy@leetcode.com",
        "testemail+david@lee.tcode.com",
      ]),
      2
    )
    XCTAssertEqual(
      solution.numUniqueEmails([
        "a@leetcode.com",
        "b@leetcode.com",
        "c@leetcode.com",
      ]),
      3
    )
  }
}
