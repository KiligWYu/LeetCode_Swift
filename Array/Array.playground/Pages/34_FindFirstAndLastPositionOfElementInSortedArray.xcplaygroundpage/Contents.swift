//
// https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array
// 34. 在排序数组中查找元素的第一个和最后一个位置
//
// 给定一个按照升序排列的整数数组 nums，和一个目标值 target。找出给定目标值在数组中的开始位置和结束位置。
// 如果数组中不存在目标值 target，返回 [-1, -1]。
//
// 时间复杂度：O(logn)
// 空间复杂度：O(1)
//

class Solution {
  func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    guard !nums.isEmpty else {
      return [-1, -1]
    }

    return [searchStartIdx(nums, target), searchEndIdx(nums, target)]
  }

  private func searchStartIdx(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1

    while left + 1 < right {
      let mid = (right - left) / 2 + left

      if nums[mid] < target {
        left = mid + 1
      } else {
        right = mid
      }
    }

    return nums[left] == target ? left : nums[right] == target ? right : -1
  }

  private func searchEndIdx(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1

    while left + 1 < right {
      let mid = (right - left) / 2 + left

      if nums[mid] > target {
        right = mid - 1
      } else {
        left = mid
      }
    }

    return nums[right] == target ? right : nums[left] == target ? left : -1
  }
}

// Tests
let s = Solution()
s.searchRange([5, 7, 7, 8, 8, 10], 8) == [3, 4]
s.searchRange([5, 7, 7, 8, 8, 10], 6) == [-1, -1]
s.searchRange([], 0) == [-1, -1]
