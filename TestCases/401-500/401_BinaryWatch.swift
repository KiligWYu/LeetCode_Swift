//
//  401_BinaryWatch.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/26/23.
//

import XCTest

final class BinaryWatch: XCTestCase {
  func testReadBinaryWatch() throws {
    let solution = Solution_401()

    XCTAssertEqual(
      Set(solution.readBinaryWatch(1)),
      ["0:01", "0:02", "0:04", "0:08", "0:16", "0:32", "1:00", "2:00", "4:00", "8:00"]
    )

    XCTAssertEqual(Set(solution.readBinaryWatch(9)), [])

    XCTAssertEqual(
      Set(solution.readBinaryWatch(8)),
      ["11:59", "11:55", "11:47", "11:31", "7:59", "7:55", "7:47", "7:31"]
    )
  }
}
