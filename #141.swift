//
//  #141
//  https://leetcode.com/problems/linked-list-cycle/
//

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head, fast = head
        
        while slow?.next != nil, fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                return true
            }
        }
        
        return false
    }
}
