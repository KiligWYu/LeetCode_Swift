//: ## [59. 螺旋矩阵 II](https://leetcode-cn.com/problems/spiral-matrix-ii/)
/*:
 给你一个正整数 `n` ，生成一个包含 `1` 到 `n²` 所有元素，且元素按顺时针顺序螺旋排列的 `n x n` 正方形矩阵 `matrix` 。
 */
/*:
 时间复杂度：`O(n²)`
 空间复杂度：`O(1)`
 */

class Solution {
  func generateMatrix(_ n: Int) -> [[Int]] {
    guard n > 0 else {
      return [[Int]]()
    }

    var num = 1
    var res = Array(repeating: Array(repeating: 0, count: n), count: n)

    for layer in 0..<n / 2 {
      let start = layer
      let end = n - layer - 1

      // top
      for i in start..<end {
        res[start][i] = num
        num += 1
      }

      // right
      for i in start..<end {
        res[i][end] = num
        num += 1
      }

      // bottom
      for i in stride(from: end, to: start, by: -1) {
        res[end][i] = num
        num += 1
      }

      // left
      for i in stride(from: end, to: start, by: -1) {
        res[i][start] = num
        num += 1
      }
    }

    // handle the center one
    if n % 2 != 0 {
      res[n / 2][n / 2] = n * n
    }

    return res
  }
}

// Tests
let s = Solution()
s.generateMatrix(3) == [[1, 2, 3], [8, 9, 4], [7, 6, 5]]
s.generateMatrix(1) == [[1]]
