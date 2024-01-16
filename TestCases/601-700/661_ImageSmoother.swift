//
//  661_ImageSmoother.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/16/24.
//

import XCTest

final class ImageSmoother: XCTestCase {
  func testImageSmoother() throws {
    let solution = Solution_661()
    XCTAssertEqual(
      solution.imageSmoother([[1,1,1],[1,0,1],[1,1,1]]),
      [[0,0,0],[0,0,0],[0,0,0]]
    )
    XCTAssertEqual(
      solution.imageSmoother([[100,200,100],[200,50,200],[100,200,100]]),
      [[137,141,137],[141,138,141],[137,141,137]]
    )
  }
}
