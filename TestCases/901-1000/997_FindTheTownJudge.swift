//
//  997_FindTheTownJudge.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/5/24.
//

import XCTest

final class FindTheTownJudge: XCTestCase {
  func test_findJudge() throws {
    let solution = Solution_997()
    XCTAssertEqual(solution.findJudge(2, [[1, 2]]), 2)
    XCTAssertEqual(solution.findJudge(3, [[1, 3], [2, 3]]), 3)
    XCTAssertEqual(solution.findJudge(3, [[1, 3], [2, 3], [3, 1]]), -1)
    XCTAssertEqual(solution.findJudge(3, [[1, 2], [2, 3]]), -1)
    XCTAssertEqual(solution.findJudge(4, [[1, 3], [1, 4], [2, 3], [2, 4], [4, 3]]), 3)
  }
}
