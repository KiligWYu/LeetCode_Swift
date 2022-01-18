//: ## [74. 搜索二维矩阵](https://leetcode-cn.com/problems/search-a-2d-matrix/)
/*:
 编写一个高效的算法来判断 `m x n` 矩阵中，是否存在一个目标值。该矩阵具有如下特性：

 - 每行中的整数从左到右按升序排列。
 - 每行的第一个整数大于前一行的最后一个整数。
 */
/*:
 时间复杂度：`O(log(m + n))`
 \
 空间复杂度：`O(1)`
 */

class Solution {
  func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    if matrix.count == 0 || matrix[0].count == 0 {
      return false
    }

    let rowNum = searchRow(matrix, target)
    return searchCol(matrix[rowNum], target)
  }

  private func searchRow(_ matrix: [[Int]], _ target: Int) -> Int {
    var left = 0, right = matrix.count - 1

    while left + 1 < right {
      let mid = (right - left) / 2 + left
      if matrix[mid][0] == target {
        return mid
      } else if matrix[mid][0] < target {
        left = mid
      } else {
        right = mid
      }
    }

    return matrix[right][0] <= target ? right : left
  }

  private func searchCol(_ nums: [Int], _ target: Int) -> Bool {
    var left = 0, right = nums.count - 1

    while left <= right {
      let mid = (right - left) / 2 + left
      if nums[mid] == target {
        return true
      } else if nums[mid] < target {
        left = mid + 1
      } else {
        right = mid - 1
      }
    }

    return false
  }
}

// Tests
let s = Solution()
s.searchMatrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3) == true
s.searchMatrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13) == false
