//: ## [73. 矩阵置零](https://leetcode-cn.com/problems/set-matrix-zeroes/)
/*:
 给定一个 `m x n` 的矩阵，如果一个元素为 `0`，则将其所在行和列的所有元素都设为 `0`。请使用 `原地` 算法。
 */
/*:
 时间复杂度：`O(n^2)`
 \
 空间复杂度：`O(1)`
 */

class Solution {
  func setZeroes(_ matrix: inout [[Int]]) {
    var rowHasZero = false, colHasZero = false
    let m = matrix.count, n = matrix[0].count

    for i in 0..<m where matrix[i][0] == 0 {
      colHasZero = true
      break
    }

    for i in 0..<n where matrix[0][i] == 0 {
      rowHasZero = true
      break
    }

    for i in 1..<m {
      for j in 1..<n {
        if matrix[i][j] == 0 {
          matrix[0][j] = 0
          matrix[i][0] = 0
        }
      }
    }

    for i in 1..<m {
      for j in 1..<n {
        if matrix[0][j] == 0 || matrix[i][0] == 0 {
          matrix[i][j] = 0
        }
      }
    }

    if rowHasZero {
      for i in 0..<n {
        matrix[0][i] = 0
      }
    }

    if colHasZero {
      for i in 0..<m {
        matrix[i][0] = 0
      }
    }
  }
}

// Tests
let s = Solution()
var matrix = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
s.setZeroes(&matrix)
matrix == [[1, 0, 1], [0, 0, 0], [1, 0,1 ]]

var matrix2 = [[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]
s.setZeroes(&matrix2)
matrix2 == [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]]
