//
//  705_DesignHashSet.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/19/24.
//

import XCTest

final class DesignHashSet: XCTestCase {
  func testMyHashSet() throws {
    let myHashSet = MyHashSet()
    myHashSet.add(1)
    myHashSet.add(2)
    XCTAssertTrue(myHashSet.contains(1))
    XCTAssertFalse(myHashSet.contains(3))
    myHashSet.add(2)
    XCTAssertTrue(myHashSet.contains(2))
    myHashSet.remove(2)
    XCTAssertFalse(myHashSet.contains(2))
  }
}
