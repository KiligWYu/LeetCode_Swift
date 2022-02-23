//
// 26. 删除有序数组中的重复项
//
// 链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/
//
// 给你一个有序数组 nums，请你原地删除重复出现的元素，使每个元素只出现一次，返回删除后数组的新长度。
// 不要使用额外的数组空间，你必须在原地修改输入数组并在使用 O(1) 额外空间的条件下完成。
//
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

class Solution {
  func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 0 else {
      return 0
    }

    var index = 0

    for num in nums where num != nums[index] {
      index += 1
      nums[index] = num
    }

    return index + 1
  }
}

// Tests
let s = Solution()
var array1 = [1, 1, 2]
var array2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
s.removeDuplicates(&array1) == 2
s.removeDuplicates(&array2) == 5
