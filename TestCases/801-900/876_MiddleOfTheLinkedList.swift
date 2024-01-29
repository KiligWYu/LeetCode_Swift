//
//  876_MiddleOfTheLinkedList.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/29/24.
//

import XCTest

final class MiddleOfTheLinkedList: XCTestCase {
  func test_middleNode() throws {
    let solution = Solution_876()
    let head = [1, 2, 3, 4, 5].toList
    let head2 = [1, 2, 3, 4, 5, 6].toList
    let head3 = [1].toList
    let head4 = [1, 2].toList
    let head5: ListNode? = nil
    XCTAssertEqual(solution.middleNode(head)?.values(), "3 -> 4 -> 5")
    XCTAssertEqual(solution.middleNode(head2)?.values(), "4 -> 5 -> 6")
    XCTAssertEqual(solution.middleNode(head3)?.values(), "1")
    XCTAssertEqual(solution.middleNode(head4)?.values(), "2")
    XCTAssertEqual(solution.middleNode(head5), nil)
  }
}
