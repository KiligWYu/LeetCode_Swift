//
// 27. 移除元素
//
// 链接：https://leetcode-cn.com/problems/remove-element/
//
// 给你一个数组 nums 和一个值 val，你需要 原地 移除所有数值等于 val 的元素，并返回移除后数组的新长度。
// 不要使用额外的数组空间，你必须仅使用 O(1) 额外空间并原地修改输入数组。
// 元素的顺序可以改变。你不需要考虑数组中超出新长度后面的元素。
//
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

class Solution {
  func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    nums = nums.filter { (num) in num != val }
    return nums.count
  }

  func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
    if nums.isEmpty { return 0 }

    var index = 0
    for i in 0 ..< nums.count {
      if nums[i] != val {
        nums[index] = nums[i]
        index += 1
      }
    }

    nums.removeLast(nums.count - index)

    return nums.count
  }
}

// Tests
let s = Solution()
var array1 = [3, 2, 2, 3]
var array2 = [0, 1, 2, 2, 3, 0, 4, 2]
s.removeElement(&array1, 3) == 2
s.removeElement2(&array2, 2) == 5
