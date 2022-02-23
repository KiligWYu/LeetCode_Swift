//: ## [90. 子集 II](https://leetcode-cn.com/problems/subsets-ii/)
/*:
 给你一个整数数组 `nums`，其中可能包含重复元素，请你返回该数组所有可能的子集（幂集）。

 解集 **不能** 包含重复的子集。返回的解集中，子集可以按 **任意顺序** 排列。
 */
/*:
 时间复杂度：`O(n^n)`
 \
 空间复杂度：`O(n)`
 */

class Solution {
  func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]](), path = [Int]()

    let nums = nums.sorted(by: <)

    _dfs(&res, &path, nums, 0)

    return res
  }

  private func _dfs(_ res: inout [[Int]], _ path: inout [Int], _ nums: [Int], _ index: Int) {
    res.append(path)

    for i in index ..< nums.count {
      if i > 0, nums[i] == nums[i - 1], i != index {
        continue
      }

      path.append(nums[i])
      _dfs(&res, &path, nums, i + 1)
      path.removeLast()
    }
  }
}

// Tests
let s = Solution()
s.subsetsWithDup([1, 2, 2]) == [[], [1], [1, 2], [1, 2, 2], [2], [2, 2]]
s.subsetsWithDup([0]) == [[], [0]]
