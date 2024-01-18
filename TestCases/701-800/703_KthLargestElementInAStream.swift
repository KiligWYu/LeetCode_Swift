//
//  703_KthLargestElementInAStream.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/18/24.
//

import XCTest

final class KthLargestElementInAStream: XCTestCase {
  func testKthLargest() throws {
    let kthLargest = KthLargest(3, [4, 5, 8, 2])
    XCTAssertEqual(kthLargest.add(3), 4)
    XCTAssertEqual(kthLargest.add(5), 5)
    XCTAssertEqual(kthLargest.add(10), 5)
    XCTAssertEqual(kthLargest.add(9), 8)
    XCTAssertEqual(kthLargest.add(4), 8)
  }
  
  func testKthLargest2() throws {
    let kthLargest = KthLargest(1, [])
    XCTAssertEqual(kthLargest.add(-3), -3)
    XCTAssertEqual(kthLargest.add(-2), -2)
    XCTAssertEqual(kthLargest.add(-4), -2)
    XCTAssertEqual(kthLargest.add(0), 0)
    XCTAssertEqual(kthLargest.add(4), 4)
  }
}
