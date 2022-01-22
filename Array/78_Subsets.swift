//: ## [78. 子集](https://leetcode-cn.com/problems/subsets/)
/*:
 给你一个整数数组 `nums` ，数组中的元素 **互不相同**。返回该数组所有可能的子集（幂集）。
 \
 解集 **不能** 包含重复的子集。你可以按 **任意顺序** 返回解集。
 */
/*:
 时间复杂度：`O(n^n)`
 \
 空间复杂度：`O(n)`
 */

class Solution {
  func subsets(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]]()
    var path = [Int]()

    let nums = nums.sorted(by: <)

    _dfs(&res, &path, nums, 0)

    return res
  }

  private func _dfs(_ res: inout [[Int]], _ path: inout [Int], _ nums: [Int], _ index: Int) {
    res.append(path)

    for i in index..<nums.count {
      path.append(nums[i])
      _dfs(&res, &path, nums, i + 1)
      path.removeLast()
    }
  }
}

// Tests
let s = Solution()
s.subsets([1, 2, 3]) == [[], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3]]
s.subsets([0]) == [[], [0]]
