//
//  206. Reverse Linked List
//  https://leetcode.com/problems/reverse-linked-list/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/1/23.
//

import Foundation

class Solution_206 {
  func reverseList(_ head: ListNode?) -> ListNode? {
    var pre: ListNode?, head = head, next: ListNode?

    while head != nil {
      next = head?.next
      head?.next = pre
      pre = head
      head = next
    }

    return pre
  }
}
