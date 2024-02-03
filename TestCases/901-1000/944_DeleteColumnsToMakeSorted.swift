//
//  944_DeleteColumnsToMakeSorted.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/3/24.
//

import XCTest

final class DeleteColumnsToMakeSorted: XCTestCase {
  func test_minDeletionSize() throws {
    let solution = Solution_944()
    XCTAssertEqual(solution.minDeletionSize(["abc", "bce", "cae"]), 1)
    XCTAssertEqual(solution.minDeletionSize(["cba", "daf", "ghi"]), 1)
    XCTAssertEqual(solution.minDeletionSize(["a", "b"]), 0)
    XCTAssertEqual(solution.minDeletionSize(["zyx", "wvu", "tsr"]), 3)
  }
}
