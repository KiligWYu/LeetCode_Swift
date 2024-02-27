//
//  1290. Convert Binary Number in a Linked List to Integer
//  https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/27/24.
//

import Foundation

class Solution_1290 {
  func getDecimalValue(_ head: ListNode?) -> Int {
    var res = 0, head = head
    while head != nil {
      res = res * 2 + head!.val
      head = head!.next
    }
    return res
  }
}
