//
// 链接：https://leetcode-cn.com/problems/4sum/
//
// 18. 四数之和
//
// 给你一个由 n 个整数组成的数组 nums ，和一个目标值 target 。
// 请你找出并返回满足下述全部条件且不重复的四元组 [nums[a], nums[b], nums[c], nums[d]] （若两个四元组元素一一对应，则认为两个四元组重复）：
// 0 <= a, b, c, d < n
// a、b、c 和 d 互不相同
// nums[a] + nums[b] + nums[c] + nums[d] == target
// 你可以按 任意顺序 返回答案 。
//
// 时间复杂度：O(n^3)
// 空间复杂度：O(nC4)
//

class Solution {
  func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    guard nums.count >= 4 else {
      return []
    }

    let nums = nums.sorted()
    var threeSum = 0
    var twoSum = 0
    var left = 0
    var right = 0
    var res = [[Int]]()

    for i in 0..<nums.count - 3 {
      guard i == 0 || nums[i] != nums[i - 1] else {
        continue
      }

      threeSum = target - nums[i]

      for j in i + 1..<nums.count - 2 {
        guard j == i + 1 || nums[j] != nums[j - 1] else {
          continue
        }

        twoSum = threeSum - nums[j]

        left = j + 1
        right = nums.count - 1
        while left < right {
          if nums[left] + nums[right] == twoSum {
            res.append([nums[i], nums[j], nums[left], nums[right]])
            repeat {
              left += 1
            } while left < right && nums[left] == nums[left - 1]
            repeat {
              right -= 1
            } while left < right && nums[right] == nums[right + 1]
          } else if nums[left] + nums[right] < twoSum {
            repeat {
              left += 1
            } while left < right && nums[left] == nums[left - 1]
          } else {
            repeat {
              right -= 1
            } while left < right && nums[right] == nums[right + 1]
          }
        }
      }
    }

    return res
  }
}

// Tests
let s = Solution()
s.fourSum([1, 0, -1, 0, -2, 2], 0) == [[-2, -1, 1, 2],[-2, 0, 0, 2],[-1, 0, 0, 1]]
s.fourSum([2, 2, 2, 2, 2], 8) == [[2, 2, 2, 2]]
