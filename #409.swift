//
//  #409
//  https://leetcode.com/problems/longest-palindrome/
//

import Foundation

class Solution {
    func longestPalindrome(_ s: String) -> Int {
        let map = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)
        
        var res = 0
        
        for (_, value) in map {
            if value % 2 == 0 {
                res += value
            }
        }
        
        if res > 0, res + 1 <= s.count {
            res += 1
        }
        
        return res
    }
}
