//
//  #234
//  https://leetcode.com/problems/palindrome-linked-list/
//

func isPalindrome(_ head: ListNode?) -> Bool {
    guard head != nil else {
        return true
    }
    
    var slow = head, fast = head, prev: ListNode?, post = slow?.next
    while fast != nil, fast?.next != nil {
        fast = fast?.next?.next
        
        slow?.next = prev
        prev = slow
        slow = post
        post = post?.next
    }
    
    if fast != nil {
        slow = post
    }
    
    while prev != nil {
        if prev!.val != slow!.val {
            return false
        }
        
        prev = prev!.next
        slow = slow!.next
    }
    
    return true
}
