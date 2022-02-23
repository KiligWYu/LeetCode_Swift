//
// 16. 最接近的三数之和
//
// 给你一个长度为 n 的整数数组 nums 和 一个目标值 target。请你从 nums 中选出三个整数，使它们的和与 target 最接近。
// 返回这三个数的和。
//
// 假定每组输入只存在恰好一个解。
//
// 链接：https://leetcode-cn.com/problems/3sum-closest
// 时间复杂度：O(n^2)
// 空间复杂度：O(nC3)

class Solution {
  func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    var minDiff = Int.max

    let nums = nums.sorted()

    for i in 0..<nums.count - 2 {
      if i == 0 || nums[i] != nums[i - 1] {
        let twoSum = target - nums[i]
        var left = i + 1
        var right = nums.count - 1

        while left < right {
          let diff = nums[left] + nums[right] - twoSum

          if abs(diff) < abs(minDiff) {
            minDiff = diff
          }

          if diff == 0 {
            return target
          } else if diff > 0 {
            repeat {
              right -= 1
            } while left < right && nums[right] == nums[right + 1]
          } else {
            repeat {
              left += 1
            } while left < right && nums[left] == nums[left - 1]
          }
        }
      }
    }

    return target + minDiff
  }
}

// Tests
let s = Solution()
s.threeSumClosest([-1, 2, 1, -4], 1) == 2
s.threeSumClosest([0, 0, 0], 1) == 0
