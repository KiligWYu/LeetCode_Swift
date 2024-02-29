//
//  1313_DecompressRun-LengthEncodedList.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/29/24.
//

import XCTest

final class DecompressRunLengthEncodedList: XCTestCase {
  func test_decompressRLElist() throws {
    let solution = Solution_1313()
    XCTAssertEqual(solution.decompressRLElist([1, 2, 3, 4]), [2, 4, 4, 4])
    XCTAssertEqual(solution.decompressRLElist([1, 1, 2, 3]), [1, 3, 3])
  }
}
