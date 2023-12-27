//
//  21. Merge Two Sorted Lists
//  https://leetcode.com/problems/merge-two-sorted-lists/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 10/28/23.
//

import Foundation

class Solution {
  func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var list1 = list1, list2 = list2, res = ListNode(0), next = res
    while list1 != nil, list2 != nil {
      if list1!.val < list2!.val {
        next.next = ListNode(list1!.val)
        list1 = list1?.next
      } else {
        next.next = ListNode(list2!.val)
        list2 = list2?.next
      }
      next = next.next!
    }

    if list1 != nil {
      next.next = list1
    }
    if list2 != nil {
      next.next = list2
    }

    return res.next
  }
}
