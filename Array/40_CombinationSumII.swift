//: ## [40. 组合总和 II](https://leetcode-cn.com/problems/combination-sum-ii/)
/*:
 给定一个数组 `candidates` 和一个目标数 `target` ，找出 `candidates` 中所有可以使数字和为 `target` 的组合。
 \
 `candidates` 中的每个数字在每个组合中只能使用一次。
 \
 注意：解集不能包含重复的组合。
 */
/*:
 时间复杂度：`O(n^n)`
 空间复杂度：`O(2^n - 2)`
 */

class Solution {
  func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var res = [[Int]](), path = [Int]()

    dfs(&res, &path, target, candidates.sorted(), 0)

    return res
  }

  fileprivate func dfs(_ res: inout [[Int]],
                       _ path: inout [Int],
                       _ target: Int,
                       _ candidates: [Int],
                       _ index: Int) {
    if target == 0 {
      res.append(Array(path))
      return
    }

    for i in index..<candidates.count {
      guard candidates[i] <= target else {
        break
      }

      if i > 0 && candidates[i] == candidates[i - 1] && i != index {
        continue
      }

      path.append(candidates[i])
      dfs(&res, &path, target - candidates[i], candidates, i + 1)
      path.removeLast()
    }
  }
}

// Tests
let s = Solution()
s.combinationSum2([10, 1, 2, 7, 6, 1, 5], 8) == [
  [1, 1, 6],
  [1, 2, 5],
  [1, 7],
  [2, 6]
]
s.combinationSum2([2, 5, 2, 1, 2], 5) == [
  [1, 2, 2],
  [5]
]
