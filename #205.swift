//
//  #205
//  https://leetcode.com/problems/isomorphic-strings/
//

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var map = [Character: Character]()
        for (index, char) in s.enumerated() {
            let char_t = t[t.index(t.startIndex, offsetBy: index)]
            if map[char] == nil {
                map[char] = char_t
            }
            if map[char] != char_t {
                return false
            }
        }
        
        return true
    }
}
