//
//  #58
//  https://leetcode.com/problems/length-of-last-word/
//

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var s = s, last: Character
        var count = 0
        
        while s.count > 0 {
            last = s.removeLast()
            if last == " ", count == 0 {
                continue
            } else if last != " " {
                count += 1
            } else {
                break
            }
        }
        
        return count
    }
}
