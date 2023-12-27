//
//  141_LinkedListCycle.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/18/23.
//

import XCTest

final class LinkedListCycle: XCTestCase {
  func testEmptyListNode() throws {
    let head: ListNode? = nil
    let s = Solution_141()
    XCTAssertFalse(s.hasCycle(head))
  }

  func testOneListNode() throws {
    let head = ListNode(1)
    let s = Solution_141()
    XCTAssertFalse(s.hasCycle(head))
  }

  func testHasCycleListNode() throws {
    let head = ListNode(1)
    head.next = ListNode(2)
    head.next?.next = head

    let head2 = ListNode(3)
    head2.next = ListNode(2)
    head2.next?.next = ListNode(0)
    head2.next?.next?.next = ListNode(4)
    head2.next?.next?.next?.next = head2.next

    let s = Solution_141()
    XCTAssert(s.hasCycle(head))
    XCTAssert(s.hasCycle(head2))
  }

  func testNoCycleListNode() throws {
    let head = ListNode(1)
    head.next = ListNode(2)
    head.next?.next = ListNode(3)
    head.next?.next?.next = ListNode(4)

    let s = Solution_141()
    XCTAssertFalse(s.hasCycle(head))
  }
}
