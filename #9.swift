//
//  #9 Palindrome Number
//  https://leetcode.com/problems/palindrome-number/solution/
//
//  Time Complexity: O(1), Space Complexity: O(1)
//

class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }
        
        var div = 1
        while x / div >= 10 {
            div *= 10
        }
        
        var x = x
        while x > 0 {
            let left = x / div
            let right = x % 10
            if left != right {
                return false
            }
            x = x % div / 10
            div /= 100
        }
        
        return true
    }
}
