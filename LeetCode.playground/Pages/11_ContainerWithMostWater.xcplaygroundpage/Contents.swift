//
// 给你 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0) 。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。
//
// 说明：你不能倾斜容器。
//
// 链接：https://leetcode-cn.com/problems/container-with-most-water
// 时间复杂度：O(N)
// 空间复杂度：O(1)

import Foundation

class Solution {
  func maxArea(_ height: [Int]) -> Int {
    var left = 0, right = height.count - 1, res = 0
    while left < right {
      let heightLeft = height[left], heightRight = height[right]
      res = max(res, (right - left) * min(heightLeft, heightRight))
      heightLeft < heightRight ? (left += 1) : (right -= 1)
    }
    return res
  }
}

// Tests
let solution = Solution()
solution.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]) == 49
solution.maxArea([1, 1]) == 1
solution.maxArea([4, 3, 2, 1, 4]) == 16
solution.maxArea([1, 2, 1]) == 2
