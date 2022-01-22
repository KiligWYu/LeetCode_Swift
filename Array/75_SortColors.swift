//: ## [75. 颜色分类](https://leetcode-cn.com/problems/sort-colors/)
/*:
 给定一个包含红色、白色和蓝色，一共 `n` 个元素的数组，`原地` 对它们进行排序，使得相同颜色的元素相邻，并按照红色、白色、蓝色顺序排列。

 此题中，我们使用整数 `0`、 `1` 和 `2` 分别表示红色、白色和蓝色。
 */
/*:
 时间复杂度：O(n)
 \
 空间复杂度：O(1)
 */

class Solution {
  func sortColors(_ nums: inout [Int]) {
    var red = 0, blue = nums.count - 1, i = 0

    while i <= blue {
      if nums[i] == 0 {
        (nums[i], nums[red]) = (nums[red], nums[i])
        red += 1
        i += 1
      } else if nums[i] == 1 {
        i += 1
      } else {
        (nums[i], nums[blue]) = (nums[blue], nums[i])
        blue -= 1
      }
    }
  }
}

// Tests
let s = Solution()

var nums = [2, 0, 2, 1, 1, 0]
s.sortColors(&nums)
nums == [0, 0, 1, 1, 2, 2]

var nums2 = [2, 0, 1]
s.sortColors(&nums2)
nums2 == [0, 1, 2]
