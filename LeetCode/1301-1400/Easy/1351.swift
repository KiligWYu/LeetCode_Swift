//
//  1351. Count Negative Numbers in a Sorted Matrix
//  https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 3/1/24.
//

import Foundation

class Solution_1351 {
  func countNegatives(_ grid: [[Int]]) -> Int {
    var res = 0, m = grid.count, n = grid[0].count, i = m - 1, j = 0
    while i >= 0 && j < n {
      if grid[i][j] < 0 {
        res += n - j
        i -= 1
      } else {
        j += 1
      }
    }
    return res
  }
}
