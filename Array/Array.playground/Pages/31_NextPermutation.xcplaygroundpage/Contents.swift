//
// https://leetcode-cn.com/problems/next-permutation/
// 31. 下一个排列
//
// 实现获取 下一个排列 的函数，算法需要将给定数字序列重新排列成字典序中下一个更大的排列（即，组合出下一个更大的整数）。
// 如果不存在下一个更大的排列，则将数字重新排列成最小的排列（即升序排列）。
// 必须原地修改，只允许使用额外常数空间。
//
// 时间复杂度：O(n)
// 空间复杂度：O(1)
//

class Solution {
  func nextPermutation(_ nums: inout [Int]) {
    guard let violateIndex = findViolate(nums) else {
      nums.reverse()
      return
    }

    swap(&nums, violateIndex, findLeastGreater(nums, violateIndex))
    nums = nums[0...violateIndex] + nums[(violateIndex + 1)...].reversed()
  }

  fileprivate func findViolate(_ nums: [Int]) -> Int? {
    for i in (1..<nums.count).reversed() {
      if nums[i] > nums[i - 1] {
        return i - 1
      }
    }

    return nil
  }

  fileprivate func findLeastGreater(_ nums: [Int], _ violateIndex: Int) -> Int {
    for i in (violateIndex + 1..<nums.count).reversed() {
      if nums[i] > nums[violateIndex] {
        return i
      }
    }

    fatalError()
  }

  fileprivate func swap<T>(_ nums: inout [T], _ indexL: Int, _ indexR: Int) {
    (nums[indexL], nums[indexR]) = (nums[indexR], nums[indexL])
  }
}

// Tests
let s = Solution()

var nums = [1, 2, 3]
s.nextPermutation(&nums)
nums == [1, 3, 2]

var nums2 = [3, 2, 1]
s.nextPermutation(&nums2)
nums2 == [1, 2, 3]

var nums3 = [1, 1, 5]
s.nextPermutation(&nums3)
nums3 == [1, 5, 1]

var nums4 = [1]
s.nextPermutation(&nums4)
nums4 == [1]
