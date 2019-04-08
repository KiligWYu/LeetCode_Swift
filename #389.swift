//
//  #389
//  https://leetcode.com/problems/find-the-difference/
//

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        return Set(t.map { $0 }).subtracting(s.map {$0}).first!
    }
}
