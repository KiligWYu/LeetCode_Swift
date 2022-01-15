//: ## [63. 不同路径 II](https://leetcode-cn.com/problems/unique-paths-ii/)
/*:
 一个机器人位于一个 m x n 网格的左上角 （起始点在下图中标记为 “Start” ）。
 \
 机器人每次只能向下或者向右移动一步。机器人试图达到网格的右下角（在下图中标记为 “Finish”）。
 \
 现在考虑网格中有障碍物。那么从左上角到右下角将会有多少条不同的路径？
 \
 网格中的障碍物和空位置分别用 1 和 0 来表示。
 */
/*:
 时间复杂度：`O(mn)`
 \
 空间复杂度：`O(mn)`
 */

class Solution {
  func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    let m = obstacleGrid.count
    guard m > 0 else {
      return 0
    }

    let n = obstacleGrid[0].count
    guard n > 0 else {
      return 0
    }

    var dp = Array(repeating: Array(repeating: -1, count: n), count: m)

    return help(m - 1, n - 1, &dp, obstacleGrid)
  }

  fileprivate func help(_ m: Int, _ n: Int, _ dp: inout [[Int]], _ obstacleGrid: [[Int]]) -> Int {
    if m < 0 || n < 0 {
      return 0
    }
    if obstacleGrid[m][n] == 1 {
      return 0
    }
    if m == 0 && n == 0 {
      return 1
    }
    if dp[m][n] != -1 {
      return dp[m][n]
    }

    dp[m][n] = help(m - 1, n, &dp, obstacleGrid) + help(m, n - 1, &dp, obstacleGrid)
    return dp[m][n]
  }
}

// Tests
let s = Solution()
s.uniquePathsWithObstacles([[0, 0, 0], [0, 1, 0], [0, 0, 0]]) == 2
s.uniquePathsWithObstacles([[0, 1], [0, 0]]) == 1
