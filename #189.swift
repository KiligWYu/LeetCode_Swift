//
//  #189
//  https://leetcode.com/problems/rotate-array/
//

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard k > 0, nums.count > 0, k % nums.count > 0 else {
            return
        }
        
        let k = nums.count - k % nums.count
        let n = nums[k...]
        nums.removeSubrange(k...)
        nums.insert(contentsOf: n, at: 0)
    }
}
