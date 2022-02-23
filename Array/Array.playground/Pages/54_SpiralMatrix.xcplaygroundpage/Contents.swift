//: ## [54. 螺旋矩阵](https://leetcode-cn.com/problems/spiral-matrix/)
/*:
 给你一个 `m` 行 `n` 列的矩阵 `matrix` ，请按照 **顺时针螺旋顺序**，返回矩阵中的所有元素。
 */
/*:
 时间复杂度：`O(n^2)`
 空间复杂度：`O(1)`
 */

class Solution {
  func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var res = [Int]()

    guard matrix.count != 0 else {
      return res
    }

    var startX = 0
    var endX = matrix.count - 1
    var startY = 0
    var endY = matrix[0].count - 1

    while true {
      // top
      for i in startY...endY {
        res.append(matrix[startX][i])
      }
      startX += 1
      if startX > endX {
        break
      }

      // right
      for i in startX...endX {
        res.append(matrix[i][endY])
      }
      endY -= 1
      if startY > endY {
        break
      }

      // bottom
      for i in stride(from: endY, through: startY, by: -1) {
        res.append(matrix[endX][i])
      }
      endX -= 1
      if startX > endX {
        break
      }

      // left
      for i in stride(from: endX, through: startX, by: -1) {
        res.append(matrix[i][startY])
      }
      startY += 1
      if startY > endY {
        break
      }
    }

    return res
  }
}

// Tests
let s = Solution()
s.spiralOrder([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) == [1, 2, 3, 6, 9, 8, 7, 4, 5]
s.spiralOrder([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]) == [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7]
