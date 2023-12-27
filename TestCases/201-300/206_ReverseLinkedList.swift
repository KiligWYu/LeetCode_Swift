//
//  206_ReverseLinkedList.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/1/23.
//

import XCTest

final class ReverseLinkedList: XCTestCase {
  func testReverseeList() throws {
    let head: ListNode? = nil
    let head2 = [1, 2, 3, 4, 5].toList, last = head2?.last
    let head3 = [1, 2].toList, newHead = head3?.next

    let solution = Solution_206()
    XCTAssertNil(solution.reverseList(head))
    XCTAssertEqual(solution.reverseList(head2), last)
    XCTAssertEqual(solution.reverseList(head3), newHead)
  }
}
