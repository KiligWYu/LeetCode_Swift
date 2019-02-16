//
//  #206
//  https://leetcode.com/problems/reverse-linked-list/
//

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var temp: ListNode?, first = head
        
        while first != nil {
            let second = first?.next
            
            first?.next = temp
            temp = first
            
            first = second
        }
        
        return temp
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode? {
        guard let h = head, let next = h.next  else {
            return head
        }
        
        let node = reverseList2(next)
        
        next.next = h
        h.next = nil
        
        return node
    }
}
