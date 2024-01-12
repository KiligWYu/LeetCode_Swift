//
//  598_RangeAdditionII.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/12/24.
//

import XCTest

final class RangeAdditionII: XCTestCase {
  func testMaxCount() throws {
    let solution = Solution_598()
    XCTAssertEqual(solution.maxCount(3, 3, [[2,2],[3,3]]), 4)
    XCTAssertEqual(solution.maxCount(3, 3, [[2,2],[3,3],[3,3],[3,3],[2,2],[3,3],[3,3],[3,3],[2,2],[3,3],[3,3],[3,3]]), 4)
    XCTAssertEqual(solution.maxCount(3, 3, []), 9)
  }
}
