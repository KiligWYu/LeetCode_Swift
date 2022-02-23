//: ## [35. 搜索插入位置](https://leetcode-cn.com/problems/search-insert-position/)
/*:
 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
 请必须使用时间复杂度为 `O(logn)` 的算法。
 */
/*:
 时间复杂度：`O(logn)`
 \
 空间复杂度：`O(1)`
 */

class Solution {
  func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count > 0 else {
      return 0
    }

    var left = 0
    var right = nums.count - 1
    var mid = 0

    while left + 1 < right {
      mid = (right - left) / 2 + left
      if nums[mid] == target {
        return mid
      } else if nums[mid] < target {
        left = mid
      } else {
        right = mid
      }
    }

    if nums[right] < target {
      return right + 1
    }
    if nums[left] >= target {
      return left
    }

    return right
  }
}

// Tests
let s = Solution()
s.searchInsert([1, 3, 5, 6], 5) == 2
s.searchInsert([1, 3, 5, 6], 2) == 1
s.searchInsert([1, 3, 5, 6], 7) == 4
s.searchInsert([1, 3, 5, 6], 0) == 0
s.searchInsert([1], 0) == 0
