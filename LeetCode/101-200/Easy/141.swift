//
//  141. Linked List Cycle
//  https://leetcode.com/problems/linked-list-cycle/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/18/23.
//

import Foundation

class Solution_141 {
  func hasCycle(_ head: ListNode?) -> Bool {
    var fast = head, slow = head

    repeat {
      fast = fast?.next?.next
      slow = slow?.next

      if slow != nil, fast === slow {
        return true
      }
    } while fast != nil

    return false
  }
}
