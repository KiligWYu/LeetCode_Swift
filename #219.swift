//
//  #219
//  https://leetcode.com/problems/contains-duplicate-ii/
//

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        guard nums.count > 1 else {
            return false
        }
        
        var dict = [Int: Int]()
        for i in 0..<nums.count {
            if let index = dict[nums[i]], i - index <= k {
                return true
            } else {
                dict[nums[i]] = i
            }
        }
        
        return false
    }
}
