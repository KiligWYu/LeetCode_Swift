//: ## [88. 合并两个有序数组](https://leetcode-cn.com/problems/merge-sorted-array/)
/*:
 给你两个按 **非递减顺序** 排列的整数数组 `nums1` 和 `nums2`，另有两个整数 `m` 和 `n` ，分别表示 `nums1` 和 `nums2` 中的元素数目。
 \
 请你 **合并** `nums2` 到 `nums1` 中，使合并后的数组同样按 **非递减顺序** 排列。
 \
 \
 注意：最终，合并后数组不应由函数返回，而是存储在数组 `nums1` 中。为了应对这种情况，`nums1` 的初始长度为 `m + n`，其中前 `m` 个元素表示应合并的元素，后 `n` 个元素为 `0` ，应忽略。`nums2` 的长度为 `n` 。
 */
/*:
 时间复杂度：`O(n)`
 空间复杂度：`O(1)`
 */

class Solution {
  func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m - 1, j = n - 1

    while i >= 0 || j >= 0 {
      if j < 0 || (i >= 0 && nums1[i] > nums2[j]) {
        nums1[i + j + 1] = nums1[i]
        i -= 1
      } else {
        nums1[i + j + 1] = nums2[j]
        j -= 1
      }
    }
  }
}

// Tests
let s = Solution()
var nums1 = [1,2,3,0,0,0], m1 = 3
s.merge(&nums1, m1, [2,5,6], 3)
nums1 == [1,2,2,3,5,6]

var nums2 = [1], m2 = 1
s.merge(&nums2, m2, [], 0)
nums2 == [1]

var nums3 = [0], m3 = 0
s.merge(&nums3, m3, [1], 1)
nums3 == [1]
