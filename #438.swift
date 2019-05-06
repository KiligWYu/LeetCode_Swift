//
//  #438
//  https://leetcode.com/problems/find-all-anagrams-in-a-string/
//

import Foundation

class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var result = [Int]()
        guard s.count >= p.count else {
            return result
        }
        
        let dict_p = Dictionary(p.map { ($0, 1) }, uniquingKeysWith: +)
        
        for index in 0...s.count - p.count {
            let startIndex = s.index(s.startIndex, offsetBy: index)
            let endIndex = s.index(startIndex, offsetBy: p.count - 1)
            let substring = String(s[startIndex...endIndex])
            let dict_s = Dictionary(substring.map { ($0, 1) }, uniquingKeysWith: +)
            if index == 0 {
                print(dict_s)
                print(dict_p)
            }
            if dict_s == dict_p {
                result.append(index)
            }
        }
        
        return result
    }
}
