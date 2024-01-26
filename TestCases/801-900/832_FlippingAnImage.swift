//
//  832_FlippingAnImage.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/26/24.
//

import XCTest

final class FlippingAnImage: XCTestCase {
  func test_flipAndInvertImage() throws {
    let solution = Solution_832()
    XCTAssertEqual(solution.flipAndInvertImage([[1, 1, 0], [1, 0, 1], [0, 0, 0]]), [[1, 0, 0], [0, 1, 0], [1, 1, 1]])
    XCTAssertEqual(solution.flipAndInvertImage([[1, 1, 0, 0], [1, 0, 0, 1], [0, 1, 1, 1], [1, 0, 1, 0]]), [[1, 1, 0, 0], [0, 1, 1, 0], [0, 0, 0, 1], [1, 0, 1, 0]])
  }
}
