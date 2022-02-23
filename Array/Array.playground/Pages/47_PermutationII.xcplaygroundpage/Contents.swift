//: ## [47. 全排列 II](https://leetcode-cn.com/problems/permutations-ii/)
/*:
 给定一个可包含重复数字的序列 `nums` ，**按任意顺序** 返回所有不重复的全排列。
 */
/*:
 时间复杂度： `O(n^n)`
 空间复杂度： `O(n)`
 */

class Solution {
  func permuteUnique(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]](), path = [Int](), visited = [Bool](repeating: false, count: nums.count)
    let nums = nums.sorted()
    _dfs(&res, &path, nums, &visited)
    return res
  }

  private func _dfs(_ res: inout [[Int]], _ path: inout [Int], _ nums: [Int], _ visited: inout [Bool]) {
    if path.count == nums.count {
      res.append(path)
      return
    }
    for i in 0..<nums.count {
      if visited[i] || (i > 0 && nums[i] == nums[i - 1] && visited[i - 1]) {
        continue
      }
      path.append(nums[i])
      visited[i] = true
      _dfs(&res, &path, nums, &visited)
      visited[i] = false
      path.removeLast()
    }
  }
}

// Tests
let s = Solution()
s.permuteUnique([1, 1, 2]) == [
  [1, 1, 2],
  [1, 2, 1],
  [2, 1, 1]
]
s.permuteUnique([1, 2, 3]) == [
  [1, 2, 3],
  [1, 3, 2],
  [2, 1, 3],
  [2, 3, 1],
  [3, 1, 2],
  [3, 2, 1]
]
