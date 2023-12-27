//
//  160. Intersection of Two Linked Lists
//  https://leetcode.com/problems/intersection-of-two-linked-lists/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/22/23.
//

import Foundation

class Solution_160 {
  func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    guard headA != nil || headB != nil else { return nil }

    var a = headA, b = headB

    while a !== b {
      a = a == nil ? headB : a?.next
      b = b == nil ? headA : b?.next
    }

    return a
  }
}
