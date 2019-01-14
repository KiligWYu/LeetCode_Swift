//
//  #53
//  https://leetcode.com/problems/maximum-subarray/
//

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var current = nums[0]
        var sum = nums[0]
        
        for i in 1..<nums.count {
            current = max(current + nums[i], nums[i])
            sum = max(sum, current)
        }
        
        return sum
    }
}
