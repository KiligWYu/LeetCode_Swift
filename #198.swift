//
//  #198
//  https://leetcode.com/problems/house-robber/
//

class Solution {
    func rob(_ nums: [Int]) -> Int {
        var curt = 0, prev = 0
        
        for num in nums {
            (curt, prev) = (max(prev + num, curt), curt)
        }
        
        return curt
    }
}
