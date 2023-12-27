//
//  232_ImplementQueueUsingStacks.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/9/23.
//

import XCTest

final class ImplementQueueUsingStacks: XCTestCase {
  func testMyQueue() throws {
    let myQueue = MyQueue_232()
    myQueue.push(1)
    XCTAssertEqual(myQueue.storage, [1])
    myQueue.push(2)
    XCTAssertEqual(myQueue.storage, [1, 2])
    XCTAssertEqual(myQueue.peek(), 1)
    XCTAssertEqual(myQueue.pop(), 1)
    XCTAssertFalse(myQueue.empty())
  }
}
