//
//  1260. Shift 2D Grid
//  https://leetcode.com/problems/shift-2d-grid/description/
//
//  Created by 𝕶𝖎𝖑𝖎𝖌 on 2/26/24.
//

import Foundation

class Solution_1260 {
  func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
    let m = grid.count, n = grid[0].count, count = m * n
    var res = grid
    for i in 0 ..< m {
      for j in 0 ..< n {
        let index = (i * n + j + k) % count
        res[index / n][index % n] = grid[i][j]
      }
    }
    return res
  }
}
