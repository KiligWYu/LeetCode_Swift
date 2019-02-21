//
//  #237
//  https://leetcode.com/problems/delete-node-in-a-linked-list/
//

class Solution {
    func deleteNode(_ node: inout ListNode) {
        guard node.next == nil else {
            return
        }
        
        node.val = node.next!.val
        node.next = node.next?.next
    }
}
