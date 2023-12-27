//
//  234. Palindrome Linked List
//  https://leetcode.com/problems/palindrome-linked-list/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 12/10/23.
//

import Foundation

class Solution_234 {
  func isPalindrome(_ head: ListNode?) -> Bool {
    var fast = head, slow = head, dummy: ListNode? = nil

    while fast != nil, fast?.next != nil {
      fast = fast?.next?.next

      let next = slow?.next

      slow?.next = dummy
      dummy = slow
      slow = next
    }

    if fast != nil {
      slow = slow?.next
    }

    while slow != nil {
      if slow?.val != dummy?.val {
        return false
      }
      slow = slow?.next
      dummy = dummy?.next
    }

    return true
  }
}
