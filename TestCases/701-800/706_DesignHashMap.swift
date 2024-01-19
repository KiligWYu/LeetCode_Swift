//
//  706_DesignHashMap.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/19/24.
//

import XCTest

final class DesignHashMap: XCTestCase {
  func testMyHashMap() throws {
    let myHashMap = MyHashMap()
    myHashMap.put(1, 1)
    myHashMap.put(2, 2)
    XCTAssertEqual(myHashMap.get(1), 1)
    XCTAssertEqual(myHashMap.get(3), -1)
    myHashMap.put(2, 1)
    XCTAssertEqual(myHashMap.get(2), 1)
    myHashMap.remove(2)
    XCTAssertEqual(myHashMap.get(2), -1)
  }
}
