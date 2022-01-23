//: [81. 搜索旋转排序数组 II](https://leetcode-cn.com/problems/search-in-rotated-sorted-array-ii/)
/*:
 已知存在一个按非降序排列的整数数组 `nums` ，数组中的值不必互不相同。
 \
 在传递给函数之前，`nums` 在预先未知的某个下标 `k`（`0 <= k < nums.length`）上进行了 **旋转**，使数组变为 `[nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]]`（下标 **从 0 开始** 计数）。例如， `[0,1,2,4,4,4,5,6,6,7]` 在下标 `5` 处经旋转后可能变为 `[4,5,6,6,7,0,1,2,4,4]` 。
 \
 给你 **旋转后** 的数组 `nums` 和一个整数 `target` ，请你编写一个函数来判断给定的目标值是否存在于数组中。如果 `nums` 中存在这个目标值 `target` ，则返回 `true` ，否则返回 `false` 。
 */
/*:
 时间复杂度：O(logn)
 \
 空间复杂度：O(1)
 */

class Solution {
  func search(_ nums: [Int], _ target: Int) -> Bool {
    var left = 0
    var right = nums.count - 1
    var mid = 0

    while left <= right {
      mid = (right - left) / 2 + left

      if nums[mid] == target {
        return true
      }

      if nums[mid] > nums[left] {
        if nums[mid] > target, target >= nums[left] {
          right = mid - 1
        } else {
          left = mid + 1
        }
      } else if nums[mid] < nums[left] {
        if nums[mid] < target, target <= nums[right] {
          left = mid + 1
        } else {
          right = mid - 1
        }
      } else {
        left += 1
      }
    }

    return false
  }
}

// Tests
let s = Solution()
s.search([2, 5, 6, 0, 0, 1, 2], 0) == true
s.search([2, 5, 6, 0, 0, 1, 2], 3) == false
