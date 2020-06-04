//
//  #2.swift
//  
//
//  Created by wy on 2020-06-04.
//

/**
* Definition for singly-linked list.
* public class ListNode {
*     public var val: Int
*     public var next: ListNode?
*     public init() { self.val = 0; self.next = nil; }
*     public init(_ val: Int) { self.val = val; self.next = nil; }
*     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
* }
*/

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var dummy = ListNode(0), curr = dummy
        var carry = 0, p = l1, q = l2
        
        while p != nil || q != nil {
            let x = p?.val ?? 0, y = q?.val ?? 0
            let sum = carry + x + y
            carry = sum / 10
            curr.next = ListNode(sum % 10)
            curr = curr.next!
            
            if p != nil { p = p?.next }
            if q != nil { q = q?.next }
        }
        
        if carry > 0 {
            curr.next = ListNode(carry)
        }
        
        return dummy.next
    }
}
