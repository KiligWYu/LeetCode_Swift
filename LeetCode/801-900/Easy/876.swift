//
//  876. Middle of the Linked List
//  https://leetcode.com/problems/middle-of-the-linked-list/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 1/29/24.
//

import Foundation

class Solution_876 {
  func middleNode(_ head: ListNode?) -> ListNode? {
    var slow = head, fast = head
    while fast != nil, fast?.next != nil {
      fast = fast?.next?.next
      slow = slow?.next
    }
    return slow
  }
}
