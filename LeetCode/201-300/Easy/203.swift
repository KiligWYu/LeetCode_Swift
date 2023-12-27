//
//  203. Remove Linked List Elements
//  https://leetcode.com/problems/remove-linked-list-elements/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/29/23.
//

import Foundation

class Solution_203 {
  func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    let dummyHead = ListNode(0)
    dummyHead.next = head
    var curr = head, prev: ListNode? = dummyHead

    while curr != nil {
      if curr?.val == val {
        prev?.next = curr?.next
      } else {
        prev = prev?.next
      }
      curr = curr?.next
    }

    return dummyHead.next
  }
}
