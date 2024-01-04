//
//  496_NextGreaterElementI.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/4/24.
//

import XCTest

final class NextGreaterElementI: XCTestCase {
  func testNextGreaterElement() throws {
    let solution = Solution_496()
    XCTAssertEqual(
      solution.nextGreaterElement([4,1,2], [1,3,4,2]),
      [-1,3,-1]
    )
    XCTAssertEqual(
      solution.nextGreaterElement([2,4], [1,2,3,4]),
      [3,-1]
    )
  }
}
