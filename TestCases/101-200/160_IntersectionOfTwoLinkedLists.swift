//
//  160_IntersectionOfTwoLinkedLists.swift
//  TestCases
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/22/23.
//

import XCTest

final class IntersectionOfTwoLinkedLists: XCTestCase {
  func testEpmtyList() throws {
    let headA: ListNode? = nil
    let headB = ListNode(1)
    headB.next = ListNode(2)

    let headA2: ListNode? = nil
    let headB2: ListNode? = nil

    let s = Solution_160()
    XCTAssertNil(s.getIntersectionNode(headA, headB))
    XCTAssertNil(s.getIntersectionNode(headA2, headB2))
  }

  func testIntersectedLists() throws {
    let intersectedNode = ListNode(8)
    intersectedNode.next = ListNode(4)
    intersectedNode.next?.next = ListNode(5)

    let headA = ListNode(4)
    headA.next = ListNode(1)
    headA.next?.next = intersectedNode

    let headB = ListNode(5)
    headB.next = ListNode(6)
    headB.next?.next = ListNode(1)
    headB.next?.next?.next = intersectedNode

    let s = Solution_160()
    XCTAssert(s.getIntersectionNode(headA, headB) === intersectedNode)
  }

  func testUnintersectedLists() throws {
    let headA = ListNode(2)
    headA.next = ListNode(6)
    headA.next?.next = ListNode(4)

    let headB = ListNode(1)
    headB.next = ListNode(5)

    let s = Solution_160()
    XCTAssertNil(s.getIntersectionNode(headA, headB))
  }
}
