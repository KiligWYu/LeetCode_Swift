//: ## [80. 删除有序数组中的重复项 II](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array-ii/)
/*:
 给你一个有序数组 `nums` ，请你 **原地** 删除重复出现的元素，使每个元素 **最多出现两次**，返回删除后数组的新长度。
 \
 不要使用额外的数组空间，你必须在 **原地** **修改输入数组** 并在使用 `O(1)` 额外空间的条件下完成。
 */
/*:
 时间复杂度：`O(n)`
 \
 空间复杂度：`O(1)`
 */

class Solution {
  func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 2 else {
      return nums.count
    }

    var index = 1

    for i in 2 ..< nums.count {
      if nums[index] != nums[index - 1] || nums[index] != nums[i] {
        index += 1
        nums[index] = nums[i]
      }
    }

    return index + 1
  }
}

// Tests
let s = Solution()

var nums = [1, 1, 1, 2, 2, 3]
s.removeDuplicates(&nums) == 5

var nums2 = [0, 0, 1, 1, 1, 1, 2, 3, 3]
s.removeDuplicates(&nums2) == 7
