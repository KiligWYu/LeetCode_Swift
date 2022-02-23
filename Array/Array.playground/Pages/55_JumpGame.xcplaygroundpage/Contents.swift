//: ## [55. 跳跃游戏](https://leetcode-cn.com/problems/jump-game/)
/*:
 给定一个非负整数数组 `nums` ，你最初位于数组的 **第一个下标**。
 \
 数组中的每个元素代表你在该位置可以跳跃的最大长度。
 \
 判断你是否能够到达最后一个下标。
 */
/*:
 时间复杂度：`O(n)`
 空间复杂度：`O(1)`
 */

class Solution {
  func canJump(_ nums: [Int]) -> Bool {
    var maximumIndex = nums[0]

    for (currentIndex, value) in nums.enumerated(){
      if currentIndex > maximumIndex {
        return false
      }
      maximumIndex = max(maximumIndex, currentIndex + value)
    }

    return true
  }
}

// Tests
let s = Solution()
s.canJump([2, 3, 1, 1, 4]) == true
s.canJump([3, 2, 1, 0, 4]) == false
