//: ## [45_JumpGameII](https://leetcode-cn.com/problems/jump-game-ii/)
/*:
 给你一个非负整数数组 `nums` ，你最初位于数组的第一个位置。
 \
 数组中的每个元素代表你在该位置可以跳跃的最大长度。
 \
 你的目标是使用最少的跳跃次数到达数组的最后一个位置。
 \
 假设你总是可以到达数组的最后一个位置。
 */
/*:
 时间复杂度：`O(n)`
 空间复杂度：`O(1)`
 */

class Solution {
  func jump(_ nums: [Int]) -> Int {
    var maxPosition = 0
    var step = 0
    var stop = 0
    for i in 0..<nums.count - 1 {
      maxPosition = max(maxPosition, i + nums[i])
      if i == stop {
        stop = maxPosition
        step += 1
      }
    }
    return step
  }
}

// Tests
let s = Solution()
s.jump([2, 3, 1, 1, 4]) == 2
s.jump([2, 3, 0, 1, 4]) == 2
