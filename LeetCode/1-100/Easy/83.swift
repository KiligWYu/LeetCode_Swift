//
//  83. Remove Duplicates from Sorted List
//  https://leetcode.com/problems/remove-duplicates-from-sorted-list/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 11/6/23.
//

import Foundation

class Solution {
  func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var prev = head

    while let value = prev?.next?.val {
      if value == prev!.val {
        prev?.next = prev?.next?.next
      } else {
        prev = prev?.next
      }
    }

    return head
  }
}
