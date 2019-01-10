//
//  #21
//  https://leetcode.com/problems/merge-two-sorted-lists/
//

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        let node = dummy
        
        var l1 = l1, l2 = l2
        while l1 != nil, l2 != nil {
            if l1!.val < l2!.val {
                node.next = l1
                l1 = l1!.next
            } else {
                node.next = l2
                l2 = l2!.next
            }
        }
        
        node.next = l1 ?? l2
        
        return dummy.next
    }
}
