//
//  #35
//  https://leetcode.com/problems/search-insert-position/
//

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        var left = 0, right = nums.count - 1, mid = 0
        while left + 1 < right {
            mid = (right - left) / 2 + left
            if target > nums[mid] {
                left = mid
            } else if target < nums[mid] {
                right = mid
            } else {
                return mid
            }
        }
        
        if target > nums[right] {
            return right + 1
        }
        if target <= nums[left] {
            return left
        }
        
        return right
    }
}
