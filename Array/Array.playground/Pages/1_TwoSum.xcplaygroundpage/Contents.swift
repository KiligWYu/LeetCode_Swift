//
// 1. 两数之和
//
// 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。
// 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。
//
// 你可以按任意顺序返回答案。
//
// 链接：https://leetcode-cn.com/problems/two-sum
//
// 时间复杂度：O(n)
// 空间复杂度：O(n)
//

import Foundation

class Solution {
  typealias Index = Int

  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indexesDictionary = [Int: Index]()

    for (index, num) in nums.enumerated() {
      if let pairIndex = indexesDictionary[target - num] {
        return [pairIndex, index]
      }

      indexesDictionary[num] = index
    }

    return []
  }
}

// Tests
let solution = Solution()
solution.twoSum([2, 7, 11, 15], 9) == [0, 1]
solution.twoSum([3, 2, 4], 6) == [1, 2]
solution.twoSum([3,3], 6) == [0, 1]
