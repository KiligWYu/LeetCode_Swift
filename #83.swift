//
//  #83
//  https://leetcode.com/problems/remove-duplicates-from-sorted-list/
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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        while let next = current?.next {
            if next.val == current?.val {
                current?.next = next.next
            } else {
                current = next
            }
        }
        
        return head
    }
}
