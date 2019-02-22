//
//  #268
//  https://leetcode.com/problems/missing-number/
//

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let max = nums.sorted().last!
        var nums2 = Set(0...max)
        nums2.subtract(nums)
        return nums2.first!
    }
}
