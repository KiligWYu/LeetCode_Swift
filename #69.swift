//
//  #69
//  https://leetcode.com/problems/sqrtx/
//

class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 0 else {
            return x
        }
        
        var left = 1, right = x / 2 + 1, mid = 0
        while left <= right {
            mid = (right - left) / 2 + left
            if mid * mid == x {
                return mid
            } else if mid * mid < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return right
    }
}
