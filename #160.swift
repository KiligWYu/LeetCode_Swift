//
//  #160
//  https://leetcode.com/problems/intersection-of-two-linked-lists/
//

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var a = headA, b = headB
        while a !== b {
            a = a == nil ? headB : a?.next
            b = b == nil ? headA : b?.next
        }
        return a
    }
}
