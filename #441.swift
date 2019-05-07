//
//  #441
//  https://leetcode.com/problems/arranging-coins/
//

import Foundation

class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var left = 1, right = n, mid = 0
        
        while right >= left {
            mid = (left + right) / 2
            if mid * (mid + 1) / 2 <= n {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return left - 1
    }
}
