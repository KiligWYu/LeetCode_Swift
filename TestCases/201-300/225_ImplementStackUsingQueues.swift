//
//  225_ImplementStackUsingQueues.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/5/23.
//

import XCTest

final class ImplementStackUsingQueues: XCTestCase {
  func testMyStack() throws {
    let obj = MyStack_225()
    obj.push(1)
    obj.push(2)
    let ret_2: Int = obj.pop()
    let ret_3: Int = obj.top()
    let ret_4: Bool = obj.empty()

    XCTAssertEqual(ret_2, 2)
    XCTAssertEqual(ret_3, 1)
    XCTAssertFalse(ret_4)
  }
}
