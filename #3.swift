//
//  #3.swift
//  https://leetcode.com/problems/longest-substring-without-repeating-characters/
//
//  Created by wy on 2020-06-08.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var ans = 0, i = 0, map = [Character: Int]()
        let chars = Array(s)
        
        for (j, char) in chars.enumerated() {
            if let n = map[char] {
            i = max(n, i)
            }
            map[char] = j + 1
            ans = max(ans, j - i + 1)
        }
        
        return ans
    }
}
