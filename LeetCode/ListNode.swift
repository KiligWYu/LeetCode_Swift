//
//  ListNode.swift
//  LeetCode
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/6/23.
//

import Foundation

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil }
  public init(_ val: Int) { self.val = val; self.next = nil }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

public extension ListNode {
  func values() -> String {
    var vals = [Int](), next: ListNode? = self

    repeat {
      vals.append(next!.val)
      next = next?.next
    } while next != nil

    return vals.map { String($0) }.joined(separator: " -> ")
  }

  var last: ListNode? {
    var next: ListNode? = self
    while next?.next != nil {
      next = next?.next
    }
    return next
  }
}

extension ListNode: Equatable {
  public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    var lhsNext: ListNode? = lhs, rhsNext: ListNode? = rhs

    while lhsNext != nil || rhsNext != nil {
      if lhsNext?.val != rhsNext?.val { return false }
      lhsNext = lhsNext?.next
      rhsNext = rhsNext?.next
    }

    return true
  }
}

extension [Int] {
  var toList: ListNode? {
    var head: ListNode?, curr: ListNode?
    self.forEach { element in
      if head == nil {
        head = ListNode(element)
        curr = head
      } else {
        curr?.next = ListNode(element)
        curr = curr?.next
      }
    }
    return head
  }
}
