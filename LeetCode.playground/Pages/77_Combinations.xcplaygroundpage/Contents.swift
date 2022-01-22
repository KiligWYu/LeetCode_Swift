//: ## [77. 组合](https://leetcode-cn.com/problems/combinations/)
/*:
 给定两个整数 `n` 和 `k`，返回范围 `[1, n]` 中所有可能的 `k` 个数的组合。
 \
 你可以按 **任何顺序** 返回答案。
 */
/*:
 时间复杂度：`O(n^n)`
 \
 空间复杂度：`O(n)`
 */

class Solution {
  func combine(_ n: Int, _ k: Int) -> [[Int]] {
    var res = [[Int]]()
    var path = [Int]()
    let nums = [Int](1...n)

    _dfs(nums, &res, &path, 0, k)

    return res
  }

  private func _dfs(_ nums: [Int], _ res: inout [[Int]], _ path: inout [Int], _ index: Int, _ k: Int) {
    if path.count == k {
      res.append(path)
      return
    }

    for i in index..<nums.count {
      path.append(nums[i])
      _dfs(nums, &res, &path, i + 1, k)
      path.removeLast()
    }
  }
}

// Tests
let s = Solution()
s.combine(4, 2) == [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
s.combine(1, 1) == [[1]]
