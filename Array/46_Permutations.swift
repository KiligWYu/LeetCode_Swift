//: ## [46_Permutations](https://leetcode-cn.com/problems/permutations/)
/*:
 给定一个不含重复数字的数组 `nums` ，返回其 **所有可能的全排列** 。你可以 **按任意顺序** 返回答案。
 */
/*:
 时间复杂度：`O(n^n)`
 空间复杂度：`O(n)`
 */

class Solution {
  func permute(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]]()
    var path = [Int]()
    var isVisited = [Bool](repeating: false, count: nums.count)

    dfs(&res, &path, &isVisited, nums)

    return res
  }

  private func dfs(_ res: inout [[Int]], _ path: inout [Int], _ isVisited: inout [Bool], _ nums: [Int]) {
    guard path.count != nums.count else {
      res.append(path)
      return
    }

    for (i, num) in nums.enumerated() where !isVisited[i] {
      path.append(num)
      isVisited[i] = true
      dfs(&res, &path, &isVisited, nums)
      isVisited[i] = false
      path.removeLast()
    }
  }
}

// Tests
let s = Solution()
s.permute([1, 2, 3]) == [[1, 2, 3],
                         [1, 3, 2],
                         [2, 1, 3],
                         [2, 3, 1],
                         [3, 1, 2],
                         [3, 2, 1]]
s.permute([0, 1]) == [[0, 1], [1, 0]]
s.permute([1]) == [[1]]
