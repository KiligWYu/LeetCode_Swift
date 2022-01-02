//: ## [39. 组合总和](https://leetcode-cn.com/problems/combination-sum/)
/*:
 给你一个 **无重复元素** 的整数数组 `candidates` 和一个目标整数 `target` ，找出 `candidates` 中可以使数字和为目标数 `target` 的 **所有不同组合** ，并以列表形式返回。你可以按 **任意顺序** 返回这些组合。

 `candidates` 中的 同一个 数字可以 **无限制重复被选取** 。如果至少一个数字的被选数量不同，则两种组合是不同的。

 对于给定的输入，保证和为 `target` 的不同组合数少于 150 个。
 */
/*:
 时间复杂度：`O(n^n)`
 空间复杂度：`O(2^n - 1)`
 */

class Solution {
  func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var combination = [Int](), combinations = [[Int]]()

    dfs(candidates.sorted(), target, 0, &combinations, &combination)

    return combinations
  }

  private func dfs(_ candidates: [Int],
                   _ target: Int,
                   _ index: Int,
                   _ combinations: inout [[Int]],
                   _ combination: inout [Int]) {
    if target == 0 {
      combinations.append(combination)
      return
    }

    for i in index..<candidates.count {
      guard candidates[i] <= target else {
        break
      }

      combination.append(candidates[i])
      dfs(candidates, target - candidates[i], i, &combinations, &combination)
      combination.removeLast()
    }
  }
}

// Tests
let s = Solution()
s.combinationSum([2, 3, 6, 7], 7) == [[2, 2, 3], [7]]
s.combinationSum([2, 3, 5], 8) == [[2, 2, 2, 2], [2, 3, 3], [3, 5]]
s.combinationSum([2], 1) == []
s.combinationSum([1], 1) == [[1]]
s.combinationSum([1], 2) == [[1, 1]]
