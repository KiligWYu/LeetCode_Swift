//: ## [118. 杨辉三角](https://leetcode-cn.com/problems/pascals-triangle/)
/*:
 给定一个非负整数 `numRows`，生成「杨辉三角」的前 `numRows` 行。
 \
 在「杨辉三角」中，每个数是它左上方和右上方的数的和。
 */
/*:
 时间复杂度：`O(n^2)`
 空间复杂度：`O(n^2)`
 */

class Solution {
  func generate(_ numRows: Int) -> [[Int]] {
    guard numRows > 0 else { return [] }

    var triangle = [[Int]]()
    triangle.append([1])
    for rowIndex in 1..<numRows {
      var row = [Int]()
      var prevRow = triangle[rowIndex - 1]
      row.append(1)
      for index in 1..<rowIndex {
        row.append(prevRow[index - 1] + prevRow[index])
      }
      row.append(1)
      triangle.append(row)
    }

    return triangle
  }
}

// Tests
let s = Solution()
s.generate(5) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
s.generate(1) == [[1]]
