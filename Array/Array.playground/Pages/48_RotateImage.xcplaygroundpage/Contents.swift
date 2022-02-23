//: ## [48. 旋转图像](https://leetcode-cn.com/problems/rotate-image/)
/*:
 给定一个 n x n 的二维矩阵 `matrix` 表示一个图像。请你将图像顺时针旋转 90 度。
 \
 你必须在 `原地` 旋转图像，这意味着你需要直接修改输入的二维矩阵。**请不要** 使用另一个矩阵来旋转图像。
 */
/*:
 时间复杂度：`O(n^2)`
 空间复杂度：`O(1)`
 */

class Solution {
  func rotate(_ matrix: inout [[Int]]) {
    let n = matrix.count

    for layer in 0..<n / 2 {
      let start = layer, end = n - layer - 1
      for i in start..<end {
        let offset = i - start
        (matrix[start][i], matrix[i][end], matrix[end][end - offset], matrix[end - offset][start]) = (matrix[end - offset][start], matrix[start][i], matrix[i][end], matrix[end][end - offset])
      }
    }
  }
}

// Tests
let s = Solution()
var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
s.rotate(&matrix)
matrix == [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
var matrix2 = [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]]
s.rotate(&matrix2)
matrix2 == [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]
