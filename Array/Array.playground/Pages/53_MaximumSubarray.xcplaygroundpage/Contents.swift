//: ## [53. 最大子数组和](https://leetcode-cn.com/problems/maximum-subarray/)
/*:
 给你一个整数数组 `nums` ，请你找出一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。
 \
 `子数组` 是数组中的一个连续部分。
 */
/*:
 时间复杂度：`O(n)`
 空间复杂度：`O(1)`
 */

class Solution {
  func maxSubArray(_ nums: [Int]) -> Int {
    var max_current = nums[0]
    var max_global = nums[0]

    for i in 1..<nums.count {
      max_current = max(max_current + nums[i], nums[i])
      max_global = max(max_current, max_global)
    }

    return max_global
  }
}

// Tests
let s = Solution()
s.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
s.maxSubArray([1]) == 1
s.maxSubArray([5, 4, -1, 7, 8]) == 23
