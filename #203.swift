//
//  #203
//  https://leetcode.com/problems/remove-linked-list-elements/
//

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var newHead = head
        while newHead?.val == val {
            newHead = newHead?.next
        }
        
        var curr = newHead
        while curr?.next != nil {
            if curr?.next?.val == val {
                curr?.next = curr?.next?.next
            } else {
                curr = curr?.next
            }
        }
        
        return newHead
    }
}
